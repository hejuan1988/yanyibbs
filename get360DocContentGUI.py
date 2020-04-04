# -*- coding: utf-8 -*-
# @Time: 2018/12/26 8:20
# @Author: 素还真
# @File: get360DocContentGUI.py
# @SoftWare: PyCharm
from tkinter import *
import tkinter.messagebox
import requests
import json
from lxml import etree
import sys
root=Tk()
root.title("获取360Doc内容")
Label(root,text="请输入网址").grid(row=0,column=0,sticky=W)
v1=StringVar()
e1=Entry(root,textvariable=v1,width=80,)
e1.grid(row=0,column=0,padx=80,pady=5,sticky=W)
sb=Scrollbar(root,orient=VERTICAL)
sb.grid(row=2,column=2,columnspan=4,padx=5,pady=5,sticky=NS)
lb = Listbox(root,width=125,height=40,yscrollcommand=sb.set,setgrid=True,selectmode=EXTENDED)
lb.grid(row=1,column=0,padx=8,pady=5,columnspan=5,sticky=W)
sb.config(command=lb.yview)
root.geometry("25x37+800+100")
def writeTXT(contents):
    f=open("360doc.txt","a+",encoding='gbk', errors='ignore')
    f.write(contents)
    f.close()
def get360DocContent():
    txt = v1.get()
    # if len(txt.split("."))<3 and txt.split(".")[1] == '360doc':
    if  txt!="" and txt.split(".")[1] == '360doc':
        header = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'}
        ret = requests.get(txt, headers=header)
        data = ret.text
        html = etree.HTML(data)
        pcontents = html.xpath('//div//*//p//text()')
        for pcontent in pcontents:
            lb.insert(END,pcontent)
    else:
        tkinter.messagebox.showinfo("请输入", "请输入360doc网址")

def removeData():
    lb.delete(0,END)
    e1.delete(0,END)
Button(root,text="获取数据",width=10,command=get360DocContent).grid(row=0,column=0,padx=660,pady=5,sticky=W)
Button(root,text="清除",width=7,command=removeData).grid(row=0,column=0,padx=760,pady=5,sticky=E)
mainloop()

# if __name__ == '__main__':
#     get360DocContent()
