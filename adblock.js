// ==UserScript==
// @name         ReadOnepiece Adblocker
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Block ads in animecruzers related websites
// @author       Phani Rithvij
// @match        http://ww3.readonepiece.com/chapter/*
// @run-at       document-end
// @grant        GM_deleteValue
// @grant        GM_setValue
// @grant        GM_xmlhttpRequest
// ==/UserScript==

        function removeElementsByClass(className){
            var elements = document.getElementsByClassName(className);
            while(elements.length > 0){
                elements[0].parentNode.removeChild(elements[0]);
            }
        }
        function removeElementsByTag(tagName){
            var element = document.getElementsByTagName(tagName);
            while (element[0]) element[0].parentNode.removeChild(element[0]);
        }
        removeElementsByClass("pages__ad");
        removeElementsByTag("center");

