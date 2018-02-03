// ==UserScript==
// @name         ANimecruzermanga adblock
// @namespace    google.com
// @version      0.1
// @description  googleadblock
// @author       Phani Rithvij
// @match        *.readshokugeki.com/*
// @match        *.tokyoghoulre.com/*
// @match        *.readnoblesse.com/*
// @match        *.readkingdom.com/*
// @match        *.readonepiece.com/*
// @match        *.readhaikyuu.com/*
// @match        *.readmha.com/*
// @match        *.manga.watchoverlord2.com/*
// @match        *.read7deadlysins.com/*
// @match        *.readblackclover.com/*
// @match        *.readfairytail.com/*
// @match        *.readgintama.com/*
// @match        *.readopm.com/*
// @match        *.readnaruto.com/*
// @match        *.readbleachmanga.com/*
// @match        *.readsnk.com/*
// @match        *.readberserk.com/*
// @match        *.dbsmanga.com/*
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
