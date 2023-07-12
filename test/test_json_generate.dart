import 'dart:convert';

import 'package:catweb/data/models/site_model/fields/field.dart';
import 'package:catweb/data/models/site_model/parser/selector.dart';
import 'package:catweb/data/models/site_model/site_blue_map.dart';
import 'package:catweb/test/site/eh/eh_rules.dart';

void main() {
  // final json = r"""{"name":"E-Hentai","baseUrl":"https://e-hentai.org/","loginUrl":"https://e-hentai.org/bounce_login.php","loginCookieReg":"e-hentai.org","loginCookieDescription":"因为登录没法直连, 导致域名不一样","version":"","upgradeUrl":"","flag":"ignoreCertificate","readme":"","headers":[{"reg":"104.20.134.21","value":"host=e-hentai.org"},{"reg":"178.162.147.246","value":"host=api.e-hentai.org"}],"cookies":[{"reg":"104.20.134.21","value":"nw=1"}],"parserList":[{"parserType":"ListValue","name":"通用列表","uuid":"548a0ab4-eb6c-5e10-b81c-a63e84750617","extra":[{"selector":{"selector":".fp:nth-child(1) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav0Tag","global":true},{"selector":{"selector":".fp:nth-child(2) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav1Tag","global":true},{"selector":{"selector":".fp:nth-child(3) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav2Tag","global":true},{"selector":{"selector":".fp:nth-child(4) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav3Tag","global":true},{"selector":{"selector":".fp:nth-child(5) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav4Tag","global":true},{"selector":{"selector":".fp:nth-child(6) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav5Tag","global":true},{"selector":{"selector":".fp:nth-child(7) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav6Tag","global":true},{"selector":{"selector":".fp:nth-child(8) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav7Tag","global":true},{"selector":{"selector":".fp:nth-child(9) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav8Tag","global":true},{"selector":{"selector":".fp:nth-child(10) div:nth-child(3)","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"fav9Tag","global":true},{"selector":{"selector":"#eventpane","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"#dialog","global":false},{"selector":{"selector":".ptb td:last-child a","type":"css","function":"text","param":"href","regex":"from=(\\d+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"id":"from","global":false}],"itemSelector":{"selector":"//div[@class='gl1t'] | //*[starts-with(@class, 'gl2')]/..","type":"xpath","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"successSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"failedSelector":{"selector":"//*[contains(text(), \"IP address has\")]","type":"xpath","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"title":{"selector":".glink","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"subtitle":{"selector":".gl5m a, .gl4c a, .gl3e a","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"uploadTime":{"selector":".glnew,.glfc","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"star":{"selector":".ir","type":"css","function":"attr","param":"style","regex":"background-position:-?(\\d+)px -?(\\d+)px","replace":"5-$1/16-($2-1)/40","script":{"script":"","type":"output"},"defaultValue":""},"imgCount":{"selector":"//div[@class='glthumb']/*[2]/*[2]|//div[@class='gl3e']/*[5]|//div[@class='gl5t']/*[2]/*[2]","type":"xpath","function":"text","param":"","regex":"\\d+","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"language":{"selector":".gt[title^=language]","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"{\"chinese\":\"中文\",\"english\":\"英语\",\"french\":\"法语\",\"german\":\"德语\",\"japanese\":\"日语\",\"korean\":\"韩语\",\"russian\":\"俄语\",\"spanish\":\"西班牙语\",\"speechless\":\"无字\",\"italian\":\"意大利语\"}","type":"replace"},"defaultValue":""},"previewImg":{"imgUrl":{"selector":".gl2c img,.glthumb img,.gl1e img,.gl3t img","type":"css","function":"attr","param":"data-src,src","regex":"https:\\/\\/\\w+?\\.\\w+\\/(.+)","replace":"https://ehgt.org/$1","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":".gl2c img,.glthumb img,.gl1e img,.gl3t img","type":"css","function":"attr","param":"style","regex":"width:(\\d+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgHeight":{"selector":".gl2c img,.glthumb img,.gl1e img,.gl3t img","type":"css","function":"attr","param":"style","regex":"height:(\\d+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgX":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},"target":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"tag":{"selector":".cn, .cs","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"tagColor":{"selector":".cn, .cs","type":"css","function":"attr","param":"class","regex":"ct.","replace":"","script":{"script":"function hook(t){return{ct2:'#f66158',ct3:'#f09e19',ct4:'#d2d303',ct5:'#0fa911',cta:'#2fd92c',ct9:'#0bbfd3',ct6:'#4f5ce6',ct7:'#9030df',ct8:'#f38af2',ct1:'#8a8a8a'}[t]}","type":"javascript"},"defaultValue":""},"badgeSelector":{"selector":".gt, .gtl","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeText":{"selector":"","type":"css","function":"attr","param":"title","regex":"(\\w).+?:(.*)","replace":"$1:$2","script":{"script":"","type":"output"},"defaultValue":""},"badgeColor":{"selector":"","type":"css","function":"attr","param":"style","regex":"(#[0-9a-fA-F]{6})\\)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"paper":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"idCode":{"selector":".glname a, .gl1e a, .gl3t a","type":"css","function":"attr","param":"href","regex":"g\\/(\\d+\\/\\w+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"nextPage":{"selector":".ptb td:last-child a","type":"css","function":"attr","param":"href","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},{"parserType":"Gallery","name":"画廊","uuid":"c2f7dd66-8393-4c50-8b9e-699502cdbdc8","extra":[],"title":{"selector":"//h1[@id=\"gj\"]/text() | //h1[@id=\"gn\"]/text()","type":"xpath","function":"attr","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"subtitle":{"selector":"#gdn","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"uploadTime":{"selector":"#gdd tr:nth-child(1)>.gdt2","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"star":{"selector":"#rating_label","type":"css","function":"text","param":"","regex":"Average: (.+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgCount":{"selector":"#gdd tr:nth-child(6)>.gdt2","type":"css","function":"text","param":"","regex":"\\d+","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"pageCount":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"language":{"selector":"#gdd tr:nth-child(4)>.gdt2","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"{\"Chinese\":\"中文\",\"English\":\"英语\",\"French\":\"法语\",\"German\":\"德语\",\"Japanese\":\"日语\",\"Korean\":\"韩语\",\"Russian\":\"俄语\",\"Spanish\":\"西班牙语\",\"Speechless\":\"无字\",\"Italian\":\"意大利语\"}","type":"replace"},"defaultValue":""},"coverImg":{"imgUrl":{"selector":"#gd1 div","type":"css","function":"attr","param":"style","regex":"url\\((.+)\\)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":"#gd1 div","type":"css","function":"attr","param":"style","regex":"width:(\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgHeight":{"selector":"#gd1 div","type":"css","function":"attr","param":"style","regex":"height:(\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgX":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},"description":{"selector":"//a[@name=\"ulcomment\"]/ancestor::div[@class=\"c1\"]//div[@id=\"comment_0\"]","type":"xpath","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"successSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"failedSelector":{"selector":"//*[contains(text(), \"IP address has\")]","type":"xpath","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"thumbnailSelector":{"selector":".gdtm, .gdtl","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"thumbnail":{"imgUrl":{"selector":"div, img","type":"css","function":"attr","param":"src,style","regex":"https:.+?\\.jpg","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":"img","type":"css","function":"attr","param":"style","regex":"width:(\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":"200"},"imgHeight":{"selector":"img","type":"css","function":"attr","param":"style","regex":"height:(\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":"283"},"imgX":{"selector":"div","type":"css","function":"attr","param":"style","regex":"-(\\d+)px 0 no-repeat","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},"target":{"selector":"a","type":"css","function":"attr","param":"href","regex":"\\/s\\/(.+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"commentSelector":{"selector":"//div[starts-with(@class, 'c5')]/../..","type":"xpath","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"comments":{"username":{"selector":"#cdiv .c3 a","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"time":{"selector":"#cdiv .c3","type":"css","function":"text","param":"","regex":"on(.+)\\sby","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"score":{"selector":"#cdiv .c5","type":"css","function":"text","param":"","regex":".?\\d+","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"content":{"selector":"#cdiv .c6","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"avatar":{"imgUrl":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgHeight":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgX":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}}},"tag":{"selector":".cs","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"tagColor":{"selector":".cs","type":"css","function":"attr","param":"class","regex":"ct.","replace":"","script":{"script":"{\"ct1\":\"#8a8a8a\",\"ct2\":\"#f66158\",\"ct3\":\"#f09e19\",\"ct4\":\"#d2d303\",\"ct5\":\"#0fa911\",\"ct6\":\"#4f5ce6\",\"ct7\":\"#9030df\",\"ct8\":\"#f38af2\",\"ct9\":\"#0bbfd3\",\"cta\":\"#2fd92c\"}","type":"replace"},"defaultValue":""},"badgeSelector":{"selector":".gt,.gtl","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeText":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeCategory":{"selector":"","type":"css","function":"attr","param":"id","regex":"td_(.+?):","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"chapterSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"chapterTitle":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"chapterSubtitle":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"chapterCover":{"imgUrl":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgHeight":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgX":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},"nextPage":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"countPrePage":{"selector":"#gdo","type":"css","function":"raw","param":"","regex":"<div class=\"ths nosel\">(\\d+) rows.+sel\">(\\w)","replace":"$1|$2","script":{"script":"function hook(t){var row=t.split('|')[0];var column=t.split('|')[1];return parseInt(row)*{'L':5,'N':10}[column]}","type":"javascript"},"defaultValue":""}},{"parserType":"AutoComplete","name":"自动补全","uuid":"0bfe2b60-57b4-43ba-afd2-23865c5bf7e7","extra":[],"itemSelector":{"selector":"tags.*","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"itemComplete":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"function hook(n){var t=JSON.parse(n),l=null!=t.mtn?t.mtn:t.tn,m=null!=t.mns?t.mns:t.ns;return-1!=l.indexOf(\" \")&&(l='\"'+l+'$\"'),m+\":\"+l}","type":"javascript"},"defaultValue":""},"itemTitle":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"function hook(n){var r=JSON.parse(n);return r.ns+\":\"+r.tn}","type":"javascript"},"defaultValue":""},"itemSubtitle":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"function hook(n){var r=JSON.parse(n);return\"temp\"==r.ns?\"=> \"+r.mns+\":\"+r.mtn:\"\"}","type":"javascript"},"defaultValue":""},"successSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"failedSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},{"parserType":"ImageReader","name":"画廊查看器","uuid":"b6fbeb8a-882b-4f2e-ab3f-4d2faf7ce67b","extra":[],"id":{"selector":"#i2 .sn a:nth-child(1)","type":"css","function":"attr","param":"href","regex":"s\\/(.+)","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"image":{"imgUrl":{"selector":"#i3 img","type":"css","function":"attr","param":"src","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgWidth":{"selector":"#i3 img","type":"css","function":"attr","param":"style","regex":"width: (\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgHeight":{"selector":"#i3 img","type":"css","function":"attr","param":"style","regex":"height: (\\d+)px","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgX":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"imgY":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}},"largerImage":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"rawImage":{"selector":"#i7 a","type":"css","function":"attr","param":"href","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"rating":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"score":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"source":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"uploadTime":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"successSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"failedSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeSelector":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeText":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""},"badgeCategory":{"selector":"","type":"css","function":"text","param":"","regex":"","replace":"","script":{"script":"","type":"output"},"defaultValue":""}}],"pageList":[{"name":"搜索补全","uuid":"7647c9d4-82fd-4b31-ad28-a448fb7d248e","url":"https://api.e-hentai.org/api.php","action":"post","formData":"{\"method\":\"tagsuggest\",\"text\":\"{search}\"}","icon":"","displayType":"show","flag":"","parserId":"0bfe2b60-57b4-43ba-afd2-23865c5bf7e7","template":{"type":"AutoComplete","splitChar":" ","timeout":2,"script":null}},{"name":"图片显示器","uuid":"a8e4ed73-4db4-475a-9cd3-77e0d35b4a0f","url":"s/{idCode}","action":"get","formData":"","icon":"","displayType":"show","flag":"","parserId":"b6fbeb8a-882b-4f2e-ab3f-4d2faf7ce67b","template":{"type":"ImageViewer"}},{"name":"画廊","uuid":"1ebe183f-0bbe-4fb8-99fe-cbacac79700a","url":"g/{idCode}/?p={page:0}","action":"get","formData":"","icon":"","displayType":"show","flag":"","parserId":"c2f7dd66-8393-4c50-8b9e-699502cdbdc8","template":{"type":"Gallery","targetReader":"a8e4ed73-4db4-475a-9cd3-77e0d35b4a0f"}},{"name":"主页","uuid":"cb907a74-7150-438c-adce-0baf07d98630","url":"?page={page:0}${search:&f_search={search}}${filter:&{filter}}","action":"get","formData":"","icon":"home","displayType":"show","flag":"","parserId":"548a0ab4-eb6c-5e10-b81c-a63e84750617","template":{"type":"ImageList","name":"","subPages":[],"filters":[{"name":"同人志","key":"b_doujinshi","type":"boolCard","value":"true","color":{"a":255,"r":247,"g":96,"b":87}},{"name":"漫画","key":"b_manga","type":"boolCard","value":"true","color":{"a":255,"r":240,"g":156,"b":25}},{"name":"游戏CG","key":"b_gamecg","type":"boolCard","value":"true","color":{"a":255,"r":15,"g":170,"b":17}},{"name":"图片集","key":"b_imageset","type":"boolCard","value":"true","color":{"a":255,"r":69,"g":91,"b":214}},{"name":"画师CG","key":"b_artistcg","type":"boolCard","value":"true","color":{"a":255,"r":213,"g":215,"b":3}},{"name":"Cosplay","key":"b_cosplay","type":"boolCard","value":"true","color":{"a":255,"r":145,"g":51,"b":225}},{"name":"西方","key":"b_western","type":"boolCard","value":"true","color":{"a":255,"r":56,"g":212,"b":47}},{"name":"亚洲色情","key":"b_asianporn","type":"boolCard","value":"true","color":{"a":255,"r":231,"g":127,"b":227}},{"name":"无H","key":"b_nonh","type":"boolCard","value":"true","color":{"a":255,"r":12,"g":185,"b":207}},{"name":"杂项","key":"b_misc","type":"boolCard","value":"true","color":{"a":255,"r":133,"g":133,"b":133}},{"name":"搜索画廊名称","key":"f_sname","type":"bool","value":"true","color":{"a":0,"r":0,"g":0,"b":0}},{"name":"搜索画廊标签","key":"f_stags","type":"bool","value":"true","color":{"a":0,"r":0,"g":0,"b":0}},{"name":"搜索画廊种子","key":"f_storr","type":"bool","value":"false","color":{"a":0,"r":0,"g":0,"b":0}},{"name":"搜索低愿力标签","key":"f_sdt1","type":"bool","value":"false","color":{"a":0,"r":0,"g":0,"b":0}},{"name":"搜索画廊描述","key":"f_sdesc","type":"bool","value":"false","color":{"a":0,"r":0,"g":0,"b":0}},{"name":"显示删除的画廊","key":"f_sh","type":"bool","value":"false","color":{"a":0,"r":0,"g":0,"b":0}}],"script":{"script":"function hook(n){var a=JSON.parse(n),r=0,i=0,o=[\"misc\",\"doujinshi\",\"manga\",\"artistcg\",\"gamecg\",\"imageset\",\"cosplay\",\"asianporn\",\"nonh\",\"western\"];for(var s in o)r+=a[\"b_\"+o[s]]?0:1<<i,i+=1;var e=[\"advsearch=1\"];for(var s in 0!=r&&e.push(\"f_cats=\"+r),a)-1!=s.indexOf(\"f\")&&a[s]&&e.push(s+\"=on\");return e.join(\"&\")}","type":"javascript"},"disableUnchanged":true,"targetItem":"1ebe183f-0bbe-4fb8-99fe-cbacac79700a","targetAutoComplete":"7647c9d4-82fd-4b31-ad28-a448fb7d248e"}},{"name":"热门","uuid":"b05f6e77-6d75-423f-bd5d-28fdc0eda145","url":"popular?page={page:0}","action":"get","formData":"","icon":"whatshot","displayType":"show","flag":"","parserId":"548a0ab4-eb6c-5e10-b81c-a63e84750617","template":{"type":"ImageList","name":"","subPages":[],"filters":[],"script":{"script":"","type":"output"},"disableUnchanged":false,"targetItem":"1ebe183f-0bbe-4fb8-99fe-cbacac79700a","targetAutoComplete":""}},{"name":"关注","uuid":"4a6987ed-4421-4c06-9a37-5e51c510a09e","url":"watched?page={page:0}","action":"get","formData":"","icon":"eye","displayType":"show","flag":"requireLogin","parserId":"548a0ab4-eb6c-5e10-b81c-a63e84750617","template":{"type":"ImageList","name":"","subPages":[],"filters":[],"script":{"script":"","type":"output"},"disableUnchanged":false,"targetItem":"1ebe183f-0bbe-4fb8-99fe-cbacac79700a","targetAutoComplete":""}},{"name":"收藏","uuid":"18f4e5f2-6795-493a-9187-bc0765f55aa0","url":"favorites.php?page={page:0}${favcat:&favcat={favcat}}","action":"get","formData":"","icon":"heart","displayType":"show","flag":"requireLogin","parserId":"548a0ab4-eb6c-5e10-b81c-a63e84750617","template":{"type":"ImageList","name":"","subPages":[{"name":"全部","key":"","value":""},{"name":"${fav0Tag:{fav0Tag}:Favourite 0}","key":"favcat","value":"0"},{"name":"${fav1Tag:{fav1Tag}:Favourite 1}","key":"favcat","value":"1"},{"name":"${fav2Tag:{fav2Tag}:Favourite 2}","key":"favcat","value":"2"},{"name":"${fav3Tag:{fav3Tag}:Favourite 3}","key":"favcat","value":"3"},{"name":"${fav4Tag:{fav4Tag}:Favourite 4}","key":"favcat","value":"4"},{"name":"${fav5Tag:{fav5Tag}:Favourite 5}","key":"favcat","value":"5"},{"name":"${fav6Tag:{fav6Tag}:Favourite 6}","key":"favcat","value":"6"},{"name":"${fav7Tag:{fav7Tag}:Favourite 7}","key":"favcat","value":"7"},{"name":"${fav8Tag:{fav8Tag}:Favourite 8}","key":"favcat","value":"8"},{"name":"${fav9Tag:{fav9Tag}:Favourite 9}","key":"favcat","value":"9"}],"filters":[],"script":{"script":"","type":"output"},"disableUnchanged":false,"targetItem":"","targetAutoComplete":""}}]}""";
  // final site = SiteBlueMap.fromJsonString(json);
  // print(jsonEncode(site.toJson()));
  final selector = const Selector(
    selector: '#gdo',
    function: SelectorFunctionType.raw,
    regex: r'<div class="ths nosel">(\d+) rows.+sel">(\w)',
    replace: r'$1|$2',
    script: ScriptField(
      script:
      "function hook(t){var row=t.split('|')[0];var column=t.split('|')[1];return parseInt(row)*{'L':5,'N':10}[column]}",
      type: ScriptFieldType.js,
    ),
  );
  print(jsonEncode(selector.toJson()));

}