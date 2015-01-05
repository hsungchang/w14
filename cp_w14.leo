<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://leoeditor.com/leo_toc.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="2015.20141203095354.1757"><vh>@settings</vh>
<v t="2015.20141203095354.1758"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="2015.20141203095354.1759"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="2015.20141203095354.1760"><vh>@string rst3_write_intermediate_extension = .rst</vh></v>
</v>
<v t="office.20141124074401.1895"><vh>基本的 CherryPy 程式</vh></v>
<v t="office.20141124074401.1966" a="E"><vh>@path wsgi</vh>
<v t="office.20141124074401.1961" a="E"
expanded="office.20141124074401.1963,"><vh>@file application</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="2015.20141203095354.1757"></t>
<t tx="2015.20141203095354.1758">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="2015.20141203095354.1759">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="2015.20141203095354.1760"></t>
<t tx="office.20141124074401.1895">@language python
# application 程式碼
########################### 1. 導入所需模組
import cherrypy
import os
  
########################### 2. 設定近端與遠端目錄
# 確定程式檔案所在目錄, 在 Windows 下有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"
  
########################### 3. 建立主物件
class HelloWorld(object):
    _cp_config = {
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    # session 以檔案儲存, 而且位於 data_dir 下的 tmp 目錄
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session 有效時間設為 60 分鐘
    'tools.sessions.timeout' : 60
    }
  
    # 物件建立時會自動新增程式執行時必要的相關目錄
    def __init__(self):
        if not os.path.isdir(data_dir+"downloads"):
            try:
                os.makedirs(data_dir+"downloads")
            except:
                print("mkdir error")
        if not os.path.isdir(data_dir+"images"):
            try:
                os.makedirs(data_dir+"images")
            except:
                print("mkdir error")
        if not os.path.isdir(data_dir+"tmp"):
            try:
                os.makedirs(data_dir+"tmp")
            except:
                print("mkdir error")
  
    @cherrypy.expose
    def index(self):
        return "Hello World!"
  
########################### 4. 安排啟動設定
# 配合程式檔案所在目錄設定靜態目錄或靜態檔案
application_conf = {'/static':{
        'tools.staticdir.on': True,
        # 程式執行目錄下, 必須自行建立 static 目錄
        'tools.staticdir.dir': _curdir+"/static"},
        '/downloads':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/downloads"},
        '/images':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/images"}
    }
  
########################### 5. 在近端或遠端啟動程式
# 利用 HelloWorld() class 產生案例物件
root = HelloWorld()
# 假如在 os 環境變數中存在 'OPENSHIFT_REPO_DIR', 表示程式在 OpenShift 環境中執行
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 雲端執行啟動
    application = cherrypy.Application(root, config = application_conf)
else:
    # 近端執行啟動時, 可以設定埠號與對應 IP
    '''
    # (設定三)
    cherrypy.server.socket_port = 8083
    cherrypy.server.socket_host = '127.0.0.1'
    # 若加上下列兩行,  表示要以 https 啟動
    cherrypy.server.ssl_certificate = 'v:/certificates/ssl_cert.pem'
    cherrypy.server.ssl_private_key = 'v:/certificates/ssl_cert.pem'
    '''
    # http 將在  8080 啟動 (設定一)
    cherrypy.config.update({'server.socket_port': 8080, 'server.socket_host': '127.0.0.1'})
    '''
    # 只有在 https 模式啟動, 則上下 http 與 https 設定均去除, 只留下 (設定四)
    cherrypy.config.update({'server.socket_port': 443, 'server.socket_host': '127.0.0.1',
                        'server.ssl_certificate': 'v:/certificates/ssl_cert.pem',
                        'server.ssl_private_key': 'v:/certificates/ssl_cert.pem'})
    '''
  
    # https 將在 443 啟動 (設定二)
    from cherrypy._cpserver import Server
    server = Server()
    server.socket_port = 443
    server.socket_host = '127.0.0.1'
    server.ssl_certificate = 'v:/certificates/ssl_cert.pem'
    server.ssl_private_key = 'v:/certificates/ssl_cert.pem'
    server.subscribe()
  
    cherrypy.quickstart(root, config = application_conf)</t>
<t tx="office.20141124074401.1966"></t>
</tnodes>
</leo_file>
