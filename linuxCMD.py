# -*- coding: utf-8 -*-
# @Time: 2018/9/14 21:42
# @Author: 素还真
# @File: linuxCMD.py
# @SoftWare: PyCharm
import urllib.request
from lxml import etree
import sys

def cmdQuery():
    url = 'http://man.linuxde.net/%s'%(sys.argv[1])
    r = urllib.request.urlopen(url)
    htmlData = r.read()
    html = etree.HTML(htmlData)
    content = html.xpath('//div[@class="right arc-wrap"]//div[@id="arc-body"]//text()')
    endnum=len(content)
    for i in range(0,endnum):
        print(content[i],"\n")
if __name__=='__main__':
    try:
        cmdQuery()
    except:
        print("网络连接无法连接或者命令输入错误.\n Usage:%s %s"%(sys.argv[0],"linux命令名称"),"\n 如:%s ls"%(sys.argv[0]))