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
<v t="office.20141124074401.1961" a="EO"><vh>@file application</vh>
<v t="office.20141124074401.1962"><vh>&lt;&lt;declarations&gt;&gt; (application)</vh></v>
<v t="2015.20150105094832.1714"><vh>word_to_printout</vh></v>
<v t="office.20141124074401.1963" a="E"><vh>class Guess</vh>
<v t="office.20141124074401.1964"><vh>__init__</vh></v>
<v t="office.20141124074401.1965"><vh>index</vh></v>
<v t="office.20141124074401.1967"><vh>form</vh></v>
<v t="office.20141124074401.1968"><vh>action</vh></v>
<v t="2015.20150105094832.1713"><vh>word</vh></v>
</v>
</v>
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
<t tx="2015.20150105094832.1713">@cherrypy.expose
def word(self, inp):
    # dict map key:string value:function
    # string-&gt;function
    #@+node:lee.20141229095026.110: ** symbolDict(dictionary)
    symbolDict={
        "1":symbol1, "2":symbol2, "3":symbol3, "4":symbol4,
        "5": symbol5, "6": symbol6, "7":symbol7, "8":symbol8, "9":symbol9,
        "0": symbol10, "A": symbol11, "B": symbol12, "C": symbol13, "D": symbol14,
        "E": symbol15, "F": symbol16, "G": symbol17, "H": symbol18, "I": symbol19,
        "J": symbol20, "K": symbol21, "L": symbol22, "M": symbol23, "N": symbol24,
        "O": symbol25, "P": symbol26, "Q": symbol27, "R": symbol28, "S": symbol29,
        "T": symbol30, "U": symbol31, "V": symbol32, "W": symbol33, "X": symbol34,
        "Y": symbol35, "Z": symbol36, "": symbolSpace,
    }
    row = 9
    result = ""
    
    for r in range(row):
        for c in inp:
            result += symbolDict[c](r)
        result += "&lt;br /&gt;"
    return result</t>
<t tx="2015.20150105094832.1714">def symbolSpace(row):
    s = [
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
        '■■■■■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.74: ** symbol1
def symbol1 (row):
    s=[
        '■■■□■■■',
        '■■□□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■□□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.75: ** symbol2
def symbol2 (row):
    s=[
        '■□□□□□■',
        '■□■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■■□□□□□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.76: ** symbol3
def symbol3 (row):
    s=[
        '■□□□□□■',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■□□□□□■',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■□□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.77: ** symbol4
def symbol4 (row):
    s=[
        '■■■■■□■',
        '■■■■□□■',
        '■■■□■□■',
        '■■□■■□■',
        '■□■■■□■',
        '■□□□□□□',
        '■■■■■□■',
        '■■■■■□■',
        '■■■■■□■',
    ]
    return s[row]

#@+node:lee.20141229095026.78: ** symbol5
def symbol5 (row):
    s=[
        '■□□□□□□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□■',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■□□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.79: ** symbol6
def symbol6 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.80: ** symbol7
def symbol7 (row):
    s=[
        '■□□□□□□',
        '■□■■■■□',
        '■■■■■■□',
        '■■■■■□■',
        '■■■■□■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.81: ** symbol8
def symbol8 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.82: ** symbol9
def symbol9 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□□',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.83: ** symbol10
def symbol10 (row):
    s=[
        '■■□□□□■',
        '■□■■■□□',
        '■□■■■□□',
        '■□■■□■□',
        '■□■□□■□',
        '■□■□■■□',
        '■□□■■■□',
        '■□□■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.84: ** symbol11
def symbol11 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.85: ** symbol12
def symbol12 (row):
    s=[
        '■□□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.86: ** symbol13
def symbol13 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.87: ** symbol14
def symbol14 (row):
    s=[
        '■□□□□■■',
        '■□■■■□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■□■',
        '■□□□□■■',
    ]
    return s[row]

#@+node:lee.20141229095026.88: ** symbol15
def symbol15 (row):
    s=[
        '■□□□□□□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.89: ** symbol16
def symbol16 (row):
    s=[
        '■□□□□□□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.90: ** symbol17
def symbol17 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■□□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.91: ** symbol18
def symbol18 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.92: ** symbol19
def symbol19 (row):
    s=[
        '■□□□□□□',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■□□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.93: ** symbol20
def symbol20 (row):
    s=[
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■■■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.94: ** symbol21
def symbol21 (row):
    s=[
        '■□■■■■□',
        '■□■■■□■',
        '■□■■□■■',
        '■□■□■■■',
        '■□□■■■■',
        '■□■□■■■',
        '■□■■□■■',
        '■□■■■□■',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.95: ** symbol22
def symbol22 (row):
    s=[
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.96: ** symbol23
def symbol23 (row):
    s=[
        '■□■■■■□',
        '■□□■■□□',
        '■□□□□□□',
        '■□■□□■□',
        '■□■□□■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.97: ** symbol24
def symbol24 (row):
    s=[
        '■□■■■■□',
        '■□□■■■□',
        '■□□□■■□',
        '■□■□■■□',
        '■□■□□■□',
        '■□■■□■□',
        '■□■■□□□',
        '■□■■■□□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.98: ** symbol25
def symbol25 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.99: ** symbol26
def symbol26 (row):
    s=[
        '■□□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
        '■□■■■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.100: ** symbol27
def symbol27 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■□■□',
        '■□■■■□□',
        '■■□□□□□',
    ]
    return s[row]

#@+node:lee.20141229095026.101: ** symbol28
def symbol28 (row):
    s=[
        '■□□□□□■',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□□□□□■',
        '■□■■□■■',
        '■□■■■□■',
        '■□■■■■□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.102: ** symbol29
def symbol29 (row):
    s=[
        '■■□□□□■',
        '■□■■■■□',
        '■□■■■■■',
        '■□■■■■■',
        '■■□□□□■',
        '■■■■■■□',
        '■■■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.103: ** symbol30
def symbol30 (row):
    s=[
        '■□□□□□□',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.104: ** symbol31
def symbol31 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□□□□■',
    ]
    return s[row]

#@+node:lee.20141229095026.105: ** symbol32
def symbol32 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□■■□■',
        '■■□■■□■',
        '■■■□□■■',
    ]
    return s[row]

#@+node:lee.20141229095026.106: ** symbol33
def symbol33 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■□■□□■□',
        '■□■□□■□',
        '■□■□□■□',
        '■□□□□□□',
        '■■□■■□■',
        '■■□■■□■',
    ]
    return s[row]

#@+node:lee.20141229095026.107: ** symbol34
def symbol34 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■■□■■□■',
        '■■■□□■■',
        '■■■□□■■',
        '■■■□□■■',
        '■■□■■□■',
        '■□■■■■□',
        '■□■■■■□',
    ]
    return s[row]

#@+node:lee.20141229095026.108: ** symbol35
def symbol35 (row):
    s=[
        '■□■■■■□',
        '■□■■■■□',
        '■□■■■■□',
        '■■□■■□■',
        '■■■□□■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
        '■■■□■■■',
    ]
    return s[row]

#@+node:lee.20141229095026.109: ** symbol36
def symbol36 (row):
    s=[
        '■□□□□□□',
        '■■■■■■□',
        '■■■■■□□',
        '■■■■□□■',
        '■■■□□■■',
        '■■□□■■■',
        '■□□■■■■',
        '■□■■■■■',
        '■□□□□□□',
    ]
    return s[row]





</t>
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
<t tx="office.20141124074401.1961"># application 程式碼
########################### 1. 導入所需模組
@language python
@tabwidth -4

&lt;&lt;declarations&gt;&gt;
@others
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
# 利用 Guess() class 產生案例物件
root = Guess()
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
  
    cherrypy.quickstart(root, config = application_conf)
</t>
<t tx="office.20141124074401.1962">import cherrypy
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
</t>
<t tx="office.20141124074401.1963">########################### 3. 建立主物件
class Guess(object):
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
  
    @others
</t>
<t tx="office.20141124074401.1964"># 物件建立時會自動新增程式執行時必要的相關目錄
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
</t>
<t tx="office.20141124074401.1965">@cherrypy.expose
def index(self):
    return "Hello World!"
</t>
<t tx="office.20141124074401.1966"></t>
<t tx="office.20141124074401.1967">@cherrypy.expose
def form(self):
    outstring = '''
&lt;!DOCTYPE HTML&gt;&lt;HTML&gt;&lt;HEAD&gt;  &lt;TITLE&gt;A Sample Form Using GET&lt;/TITLE&gt;&lt;/HEAD&gt;&lt;BODY BGCOLOR="#FDF5E6"&gt;&lt;CENTER&gt;&lt;H2&gt;A Sample Form Using GET&lt;/H2&gt;&lt;FORM ACTION="action"&gt;  First name:  &lt;INPUT TYPE="TEXT" NAME="firstName" VALUE="Joe"&gt;&lt;BR&gt;  Last name:  &lt;INPUT TYPE="TEXT" NAME="lastName" VALUE="Hacker"&gt;&lt;P&gt;  &lt;INPUT TYPE="SUBMIT"&gt; &lt;!-- Press this button to submit form --&gt;&lt;/FORM&gt;&lt;/CENTER&gt;&lt;/BODY&gt;&lt;/HTML&gt;
'''
    return outstring
</t>
<t tx="office.20141124074401.1968">@cherrypy.expose
def action(self, lastName=None, firstName=None):
    return "lastName is " + lastName +"&lt;br /&gt; firstName is " + firstName
</t>
</tnodes>
</leo_file>
