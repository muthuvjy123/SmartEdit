<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>SuccessPage</title>
    
    <style>
    
tr, td {
    vertical-align: top;
}
html {
    background: none repeat scroll 0 0 #fff;
    color: #000;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
    margin: 0;
    padding: 0;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
fieldset, img {
    border: 0 none;
}
address, caption, cite, code, dfn, em, strong, th, var {
    font-style: normal;
    font-weight: normal;
}
li {
    list-style: outside none none;
}
caption, th {
    text-align: left;
}
h1, h2, h3, h4, h5, h6 {
    font-size: 100%;
    font-weight: normal;
}
q::before, q::after {
    content: "";
}
abbr, acronym {
    border: 0 none;
    font-variant: normal;
}
sup {
    vertical-align: text-top;
}
sub {
    vertical-align: text-bottom;
}
input, textarea, select {
    font-family: inherit;
    font-size: inherit;
    font-weight: inherit;
}
input, textarea, select {
}
legend {
    color: #000;
}
html {
    background-color: white;
    color: black;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    height: 100%;
    width: 100%;
}
body {
    background-color: white;
    color: black;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    height: 100%;
    width: 100%;
}
img {
    border: 0 none;
}
.TopLevelTable {
    width: 100%;
}
.headerLogoCell {
    background-color: #fff;
    padding-left: 5px;
}
.headerAppLinkCell {
    background-color: #fff;
    vertical-align: middle;
}
.headerAppName {
    color: #093e7d;
    font-family: Tahoma;
    font-size: 17px;
    font-weight: bold;
    white-space: nowrap;
}
.headerAppLink {
    text-decoration: none;
}
.headerUserName {
    font-weight: bold;
}
.headerIconCell {
    padding-left: 7px;
    padding-right: 7px;
    padding-top: 2px;
    vertical-align: middle;
    width: 21px;
}
.TopBarContent {
    background-image: url("header_background.png");
    background-repeat: repeat;
    border-bottom: 1px solid #61a1ef;
}
.menuC_HeaderMenuCell {
    color: #c5ffff;
    font-family: Tahoma;
    font-size: 11px;
    font-weight: normal;
    padding-bottom: 1px;
    vertical-align: middle;
    white-space: nowrap;
    width: 1%;
}
.menuC_HeaderMenuCell a {
    color: #c5ffff;
    font-family: Tahoma;
    font-size: 11px;
    font-weight: normal;
    text-decoration: none;
}
.menuC_HeaderMenuCell a:hover {
    color: #c5ffff;
    font-family: Tahoma;
    font-size: 11px;
    font-weight: normal;
    text-decoration: underline;
}
.idcFormTable {
    margin-top: 1em;
    width: auto;
}
.idcFormTable * td {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
    padding: 0.2em;
    vertical-align: middle;
}
.idcFormTableSearch {
    margin-top: 1em;
    width: auto;
}
.idcFormTableSearch * td {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
    padding: 0.2em;
    vertical-align: middle;
    white-space: nowrap;
}
.idcFieldCaption {
    text-align: right;
}
.idcRequiredEntry .idcCheckinUpdateCaption {
    color: #933;
}
option.idcNoSelection {
    color: #888;
}
.idcInfoCaption {
    font-size: 8pt;
    font-weight: bold;
    padding-left: 2px;
    padding-right: 2px;
    width: 30%;
}
.idcInfoEntry {
    width: 70%;
}
.idcFormInteriorTable {
    margin-left: inherit;
}
.idcTableFieldCaptionNoWrap * td.idcInfoCaption {
    white-space: nowrap;
}
.controlTableDataCell {
    text-align: center;
    width: 100%;
}
table.xuiTable {
    margin-top: 0.5em;
}
table.xuiTable > tbody > tr > td {
    padding-top: 0.2em;
    text-align: right;
    vertical-align: baseline;
}
table.xuiTable > tbody > tr > td + td {
    padding-left: 1em;
    text-align: left;
}
td {
    color: #000;
    font-size: 9pt;
    text-align: left;
}
.idcFieldSet {
    border-style: solid;
    border-width: thin;
    margin-left: 7em;
    margin-top: 2ex;
    padding: 0.5em;
}
.idcLegend {
    font-size: 130%;
    font-weight: bold;
    margin-left: 1em;
    padding-left: 0.2em;
    padding-right: 0.2em;
}
.hidden {
    height: 0;
    left: -9999px;
    overflow: hidden;
    position: absolute;
    top: -9999px;
    width: 0;
}
button {
    padding: 0 4px;
}
input[type="button"] {
    padding: 0 4px;
}
input[type="submit"] {
    padding: 0 4px;
}
input[type="reset"] {
    padding: 0 4px;
}
select {
    background-color: white;
    color: black;
    font-size: 9pt;
}
textarea {
    background-color: white;
    color: black;
    font-size: 9pt;
}
ul.discUnorderedList {
    padding-left: 1.5em;
}
ul.discUnorderedList li {
    list-style-position: outside;
    list-style-type: disc;
}
ul.circleUnorderedList {
    padding-left: 1.5em;
}
ul.circleUnorderedList li {
    list-style-position: outside;
    list-style-type: circle;
}
.idcAlignBegin {
    text-align: left;
}
.idcQueryBuilderTable {
    width: auto;
}
.idcQueryBuilderTable * td {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
    padding: 2px;
    vertical-align: middle;
}
.idcQueryOptionsTable * td {
    padding: 0.2em;
    vertical-align: middle;
}
.idcDebugPanel .bd {
    background-color: #fff;
    margin-right: 6px;
    overflow: auto;
}
body > .idcDebugPanel {
    position: fixed;
}
.idcDebugPanel .yui-panel .container-close {
    margin-right: 6px;
}
.idcDebugPanel .yui-resize-handle {
    background-color: #bbb;
    border: 1px solid black;
    margin: -1px;
}
.idcDebugPanel .yui-resize-handle-br {
    height: 4px;
    width: 4px;
}
.idcDebugPanel .yui-resize-handle-b {
    height: 4px;
}
.idcDebugPanel .yui-resize-handle-r {
    width: 4px;
}
#idcDebugTools {
    height: 24px;
    padding: 3px;
}
.idcDebugButton {
    height: 100%;
    padding: 2px;
    vertical-align: bottom;
}
.idcDebugButton button {
    height: 100%;
    padding: 2px;
    vertical-align: bottom;
}
.idcDebugButton_checked {
    border: 2px solid #333;
    padding: 0;
}
.idcDebugToggleAllLink {
    color: red;
    cursor: pointer;
    font-size: larger;
    font-weight: bolder;
    text-decoration: none;
}
.idcDebugRendering {
    color: green;
}
.idcDebugTreeDiv {
    background-color: #fff;
    float: left;
    padding-left: 12px;
    text-align: start;
    white-space: nowrap;
}
.idcDebugTreeDiv div {
    border: 1px solid #000;
    padding-left: 12px;
}
.idcDebug .bg0 {
    background-color: #000;
}
.idcDebug .fg0 {
    color: #000;
}
.idcDebug .border0 {
    border-color: #000;
}
.idcDebug .bg1 {
    background-color: #963;
}
.idcDebug .fg1 {
    color: #963;
}
.idcDebug .border1 {
    border-color: #963;
}
.idcDebug .bg2 {
    background-color: #f30;
}
.idcDebug .fg2 {
    color: #f30;
}
.idcDebug .border2 {
    border-color: #f30;
}
.idcDebug .bg3 {
    background-color: #f60;
}
.idcDebug .fg3 {
    color: #f60;
}
.idcDebug .border3 {
    border-color: #f60;
}
.idcDebug .bg4 {
    background-color: #990;
}
.idcDebug .fg4 {
    color: #990;
}
.idcDebug .border4 {
    border-color: #990;
}
.idcDebug .bg5 {
    background-color: #393;
}
.idcDebug .fg5 {
    color: #393;
}
.idcDebug .border5 {
    border-color: #393;
}
.idcDebug .bg6 {
    background-color: #00c;
}
.idcDebug .fg6 {
    color: #00c;
}
.idcDebug .border6 {
    border-color: #00c;
}
.idcDebug .bg7 {
    background-color: #90c;
}
.idcDebug .fg7 {
    color: #90c;
}
.idcDebug .border7 {
    border-color: #90c;
}
.idcDebug .bg8 {
    background-color: #666;
}
.idcDebug .fg8 {
    color: #666;
}
.idcDebug .border8 {
    border-color: #666;
}
.idcDebug .bg9 {
    background-color: #999;
}
.idcDebug .fg9 {
    color: #999;
}
.idcDebug .border9 {
    border-color: #999;
}
.idcDebugTreeDiv a {
    float: left;
    font-family: monospace;
    font-stretch: ultra-expanded;
    margin-left: -12px;
    text-decoration: none;
}
.idcDebugTreeDiv a img {
    border: 0 none;
}
.idcDebugPanel .yui-log {
    padding: 0;
}
.idcDebugPanel .yui-log-container {
    position: absolute;
}
.idcDebugPanel > .yui-log-container {
    position: fixed;
}
.idcDebugPanel .yui-log .yui-log-hd {
    background-color: #3d77cb;
    margin-top: 0;
    padding-right: 24px;
}
.idcDebugPanel .yui-log-btns label {
    color: #fff;
    margin-right: 4px;
}
.idcDebugPanel .yui-log .yui-log-ft {
    padding-bottom: 16px;
}
.idcDebugPanel fieldset {
    margin-left: 0;
    margin-top: 1ex;
}
.idcDebugPanel fieldset div {
    display: none;
    white-space: nowrap;
    width: 1%;
}
.idcDebugPanel legend a {
    text-decoration: none;
}
.idcDebugPanel .idcLegend {
    color: #4d4e4a;
    font-size: 120%;
    margin: 0;
    padding-left: 0.5em;
    padding-right: 0.5em;
}
.idcDebugPanel fieldset fieldset tr {
    color: #000;
}
.idcDebugPanel td, .idcDebugPanel th {
    font-size: 8pt;
    padding: 0.1em 1em;
}
.idcDebugPanel .currentRow {
    background-color: #fcc;
}
#idcDebugBar {
    bottom: 0;
    left: auto;
    position: absolute;
    right: 1px;
    top: auto;
}
body > #idcDebugBar {
    position: fixed;
}
#idcDebugBarTab a {
    border: 0 none;
    text-decoration: none;
}
#idcDebugBarTab a:active {
    outline: medium none;
}
#idcDebugBarTab a:focus {
    outline: medium none;
}
#idcDebugBarTab img {
    border: 0 none;
    vertical-align: bottom;
}
#idcDebugBar #idcDebugTools {
    border-color: #666;
    border-style: solid;
    border-width: 1px;
    display: none;
    vertical-align: bottom;
}
#idcDebugBar #idcDebugPanel {
    bottom: 36px;
    height: 480px;
    left: auto;
    position: absolute;
    right: 0;
    top: auto;
    width: 320px;
}
body > #idcDebugBar #idcDebugPanel {
    position: fixed;
}
.rtop {
    display: block;
}
.artop {
    display: block;
}
.rtop * {
    display: block;
    font-size: 1px;
    height: 1px;
    overflow: hidden;
}
.artop * {
    border-style: solid;
    border-width: 0 1px;
    display: block;
    font-size: 1px;
    height: 1px;
    overflow: hidden;
}
.r1 {
    margin-left: 5px;
    margin-right: 5px;
}
.rl1 {
    margin-left: 5px;
}
.re1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-left: 5px;
    margin-right: 5px;
}
.rel1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-left: 5px;
}
.rr1 {
    margin-right: 5px;
}
.rer1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-right: 5px;
}
.r2 {
    margin-left: 3px;
    margin-right: 3px;
}
.rl2 {
    margin-left: 3px;
}
.re2 {
    border-left-width: 2px;
    border-right-width: 2px;
    margin-left: 3px;
    margin-right: 3px;
}
.rel2 {
    border-left-width: 2px;
    margin-left: 3px;
}
.ra1 {
    border-left-width: 2px;
    border-right-width: 2px;
    margin-left: 3px;
    margin-right: 3px;
}
.ral1 {
    border-left-width: 2px;
    border-right-width: 0;
    margin-left: 3px;
}
.rr2 {
    margin-right: 3px;
}
.rer2 {
    border-right-width: 2px;
    margin-right: 3px;
}
.rar1 {
    border-left-width: 0;
    border-right-width: 2px;
    margin-right: 3px;
}
.r3 {
    margin-left: 2px;
    margin-right: 2px;
}
.rl3 {
    margin-left: 2px;
}
.re3 {
    margin-left: 2px;
    margin-right: 2px;
}
.rel3 {
    margin-left: 2px;
}
.ra2 {
    margin-left: 2px;
    margin-right: 2px;
}
.ral2 {
    border-right-width: 0;
    margin-left: 2px;
}
.rs1 {
    margin-left: 2px;
    margin-right: 2px;
}
.rsl1 {
    margin-left: 2px;
}
.res1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-left: 2px;
    margin-right: 2px;
}
.resl1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-left: 2px;
}
.rr3 {
    margin-right: 2px;
}
.rer3 {
    margin-right: 2px;
}
.rar2 {
    border-left-width: 0;
    margin-right: 2px;
}
.rsr1 {
    margin-right: 2px;
}
.resr1 {
    border-width: 1px 0 0;
    height: 1px;
    margin-right: 2px;
}
.r4 {
    height: 2px;
    margin-left: 1px;
    margin-right: 1px;
}
.rl4 {
    height: 2px;
    margin-left: 1px;
}
.rs2 {
    margin-left: 1px;
    margin-right: 1px;
}
.rsl2 {
    margin-left: 1px;
}
.re4 {
    height: 2px;
    margin-left: 1px;
    margin-right: 1px;
}
.rel4 {
    height: 2px;
    margin-left: 1px;
}
.ra3 {
    margin-left: 1px;
    margin-right: 1px;
}
.ral3 {
    border-right-width: 0;
    margin-left: 1px;
}
.ras1 {
    margin-left: 1px;
    margin-right: 1px;
}
.rasl1 {
    border-right-width: 0;
    margin-left: 1px;
}
.res2 {
    margin-left: 1px;
    margin-right: 1px;
}
.resl2 {
    margin-left: 1px;
}
.rr4 {
    height: 2px;
    margin-right: 1px;
}
.rsr2 {
    margin-right: 1px;
}
.rer4 {
    height: 2px;
    margin-right: 1px;
}
.rar3 {
    border-left-width: 0;
    margin-right: 1px;
}
.rasr1 {
    border-left-width: 0;
    margin-right: 1px;
}
.resr2 {
    margin-right: 1px;
}
.rx1 {
    border-left-width: 5px;
    border-right-width: 5px;
}
.rxl1 {
    border-left-width: 5px;
    border-right-width: 0;
}
.rxr1 {
    border-left-width: 0;
    border-right-width: 5px;
}
.rx2 {
    border-left-width: 3px;
    border-right-width: 3px;
}
.rxl2 {
    border-left-width: 3px;
    border-right-width: 0;
}
.rxr2 {
    border-left-width: 0;
    border-right-width: 3px;
}
.rx3 {
    border-left-width: 2px;
    border-right-width: 2px;
}
.rxl3 {
    border-left-width: 2px;
    border-right-width: 0;
}
.rxs1 {
    border-left-width: 2px;
    border-right-width: 2px;
}
.rxsl1 {
    border-left-width: 2px;
    border-right-width: 0;
}
.rxr3 {
    border-left-width: 0;
    border-right-width: 2px;
}
.rxsr1 {
    border-left-width: 0;
    border-right-width: 2px;
}
.rxl4 {
    border-right-width: 0;
    height: 2px;
}
.rxsl2 {
    border-right-width: 0;
}
.ral4 {
    border-right-width: 0;
    height: 2px;
}
.rasl2 {
    border-right-width: 0;
}
.rxr4 {
    border-left-width: 0;
    height: 2px;
}
.rxsr2 {
    border-left-width: 0;
}
.rar4 {
    border-left-width: 0;
    height: 2px;
}
.rasr2 {
    border-left-width: 0;
}
.ra4 {
    height: 2px;
}
.rx4 {
    height: 2px;
}
.yuimenuitemlabel-hassubmenu {
    background: url("menuA_ArrowRight.gif") no-repeat scroll right center rgba(0, 0, 0, 0);
}
.yuimenuitemlabel-hassubmenu-selected {
    background-image: url("menuA_ArrowRight_over.gif");
}
.yui_idc_actionspopupmenu.yuimenu ul {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #abbdd4;
    border-image: none;
    border-style: solid;
    border-width: 1px 0 0;
    list-style-type: none;
    margin: 0;
}
.yui_idc_actionspopupmenu.yuimenu ul:first-child {
    border-width: 0;
}
.tqsActionPopupMenu.yuimenu ul:first-child {
    border-width: 0;
}
.tqsActionPopupMenu.yuimenu ul:last-child {
    border-width: 0;
}
.yuimenuitem-hassubmenu {
}
.yuimenu ul {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #a9b6cb;
    border-image: none;
    border-style: solid;
    border-width: 1px 0 0;
}
.yuimenubaritem {
    float: left;
}
.headMenu_Bar table {
    width: 100%;
}
.idcMainMenuBarCell {
    width: 90%;
}
.headMenu_Bar * .idcMainMenuBarCell {
    text-align: right;
}
.headMenu_Bar * .menuBarExtrasTextCell {
    text-align: left;
}
.headMenu_Bar * div.bd {
    float: right;
}
.headMenu_Bar * div.bd * div.bd {
    float: none;
}
.listMenu_Bar table {
    width: 100%;
}
.listMenu_Bar * .idcMainMenuBarCell {
    text-align: left;
}
.listMenu_Bar * .menuBarExtrasTextCell {
    text-align: right;
}
.detachedBorders {
    border-collapse: separate;
}
.idc_tree_node_container {
    position: relative;
    width: 100%;
}
.idc_tree_node_container_img {
    left: 0;
    position: absolute;
    top: 0;
}
.idc_tree_node_container_text {
    height: 100%;
    padding-left: 25px;
    position: relative;
}
.MainContentTable {
    width: 100%;
}
.leftNavFrameCell {
    background: none repeat scroll 0 0 #fff;
    border: 1px solid #979991;
    vertical-align: top;
}
.contentFrameCell {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: none repeat scroll 0 0 #fff;
    border-color: #5a83b9 #224471 #224471 #5a83b9;
    border-image: none;
    border-style: solid;
    border-width: 1px;
    vertical-align: top;
}
input.formButton {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
.navBody {
    background: none repeat scroll 0 0 #fff;
}
.navItemTable {
    height: 20px;
    width: 100%;
}
.navItemText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 4px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.navItemLink {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
}
.navItemLink:hover {
    text-decoration: underline;
}
.menuA_HeaderSpacerCell {
    background: none repeat scroll 0 0 #0d4988;
    height: 1px;
}
.menuA_HeaderMenuCell {
    background: url("MenuABarBG.gif") repeat-x scroll 0 0 #0d4988;
    padding-bottom: 2px;
    padding-left: 10px;
    padding-top: 2px;
    text-align: left;
    white-space: nowrap;
    width: auto;
}
.menuA_TopCollectionItemTable {
    height: 20px;
    margin: 1px;
    vertical-align: middle;
}
.menuA_TopCollectionItemTable_over {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    height: 20px;
}
.menuA_TopCollectionItem {
    color: #c5ffff;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 0;
    padding-right: 11px;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_TopCollectionItem_over {
    color: #000;
    font-size: 8pt;
    padding-right: 11px;
}
.menuA_TopCollectionItemArrowCell {
    padding-left: 3px;
    padding-right: 3px;
    text-align: right;
    vertical-align: middle;
}
.menuA_TopLinkItem {
    background: none repeat scroll 0 0 transparent;
    font-size: 8pt;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_TopLinkItem_over {
    font-size: 8pt;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
a.menuA_TopLinkText {
    color: #c5ffff;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-decoration: none;
}
a.menuA_TopLinkText_over {
    color: #c5ffff;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: underline;
}
.menuA_TopMenuBarDividerCell {
    background: url("MenuADividerCellBG.gif") no-repeat scroll 0 0 #0d4988;
    text-align: left;
    vertical-align: top;
    width: 150px;
}
.menuA_TopMenuBarRightCell {
    background: none repeat scroll 0 0 #0d4988;
    padding-right: 6px;
    text-align: right;
    vertical-align: middle;
    white-space: nowrap;
    width: 1%;
}
.menuA_TopMenuBarExtraLink {
    color: #aabacd;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 10px;
    padding-right: 5px;
    text-align: right;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_TopMenuBarExtraLink_over {
    color: #c1d3e9;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 10px;
    padding-right: 5px;
    text-align: left;
    text-decoration: underline;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_TopChildCollectionContainer {
    border-color: #fff;
    border-style: solid;
    border-width: 1px;
    left: 0;
    margin-top: -1px;
    position: absolute;
    top: 100%;
    z-index: 99;
}
.menuA_SubChildCollectionContainer {
    border-color: #fff;
    border-style: solid;
    border-width: 1px;
    left: 99%;
    margin-left: -1px;
    position: absolute;
    top: 0;
    z-index: 99;
}
.menuA_ChildCollectionItemTable {
    border: 1px solid #fff;
    vertical-align: middle;
}
.menuA_ChildCollectionItemTable_over {
    background: none repeat scroll 0 0 #d1dde7;
    border: 1px solid #d1dde7;
    vertical-align: middle;
}
.menuA_ChildCollectionItem {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 2px 3px 10px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_ChildCollectionItem_over {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 2px 3px 10px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_ChildCollectionItemArrowCell {
    padding-right: 2px;
    text-align: right;
    vertical-align: middle;
}
.menuA_ChildLinkItem {
    font-size: 8pt;
    padding: 0;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_ChildLinkItem_over {
    background: none repeat scroll 0 0 #d1dde7;
    border: 1px solid #d1dde7;
    font-size: 8pt;
    padding: 0;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_MenuSpacerCell {
    background: none repeat scroll 0 0 #dce6f3;
    height: 1px;
}
.menuB_HeaderMenuCell {
    background: url("MenuBBarBG.gif") repeat-x scroll 0 0 #cfdceb;
    border-bottom: 1px solid #523c35;
    height: 18px;
    padding-bottom: 1px;
    padding-left: 10px;
    text-align: left;
}
.menuB_TopMenuBarRightCell {
    background: url("MenuBBarBG.gif") repeat-x scroll 0 0 #cfdceb;
    height: 18px;
    padding-bottom: 1px;
    padding-right: 3px;
    text-align: right;
}
.menuB_TopCollectionItemTable {
    height: 20px;
    margin-left: 1px;
    margin-right: 1px;
    vertical-align: middle;
}
.menuB_TopCollectionItemTable_over {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    height: 20px;
}
.menuB_TopCollectionItem {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 0;
    padding-right: 11px;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_TopCollectionItem_over {
    color: #000;
    font-size: 8pt;
    padding-right: 11px;
}
.menuB_TopCollectionItemArrowCell {
    padding-left: 3px;
    padding-right: 3px;
    text-align: right;
    vertical-align: middle;
}
.menuB_TopLinkItem {
    background: none repeat scroll 0 0 transparent;
    font-size: 8pt;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_TopLinkItem_over {
    font-size: 8pt;
    height: 20px;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
a.menuA_ChildLinkText {
    color: #000;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 10px;
    text-decoration: none;
    white-space: nowrap;
}
a.menuA_ChildLinkText_over {
    color: #000;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 10px;
    text-decoration: none;
    white-space: nowrap;
}
a.menuB_TopLinkText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-decoration: none;
}
a.menuB_TopLinkText_over {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: underline;
}
a.menuB_ChildLinkText_over {
    color: #000;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 2px 9px;
    text-decoration: none;
    white-space: nowrap;
}
.typeaheadMenuEmpty {
    color: red;
    font-weight: bolder;
}
.yui-ac {
    display: inline;
    font-family: arial;
    font-size: 100%;
    position: relative;
}
.yui-ac-input {
    width: 15em;
    z-index: 16;
}
.yui-ac-container {
    left: 0;
    position: absolute;
    top: 1.6em;
    width: 100%;
}
.yui-ac-content {
    background: none repeat scroll 0 0 #fff;
    border: 1px solid #808080;
    overflow: hidden;
    position: absolute;
    width: auto;
    z-index: 9050;
}
.yui-ac-shadow {
    background: none repeat scroll 0 0 #000;
    margin: 0.3em;
    opacity: 0.25;
    position: absolute;
    width: 100%;
    z-index: 9049;
}
.yui-ac-content ul {
    margin: 0;
    padding: 0;
    width: 100%;
}
.yui-ac-content li {
    cursor: default;
    margin: 0;
    padding: 2px 5px;
    white-space: nowrap;
}
.yui-ac-content li.yui-ac-prehighlight {
    background: none repeat scroll 0 0 #b3d4ff;
}
.yui-ac-content li.yui-ac-highlight {
    background: none repeat scroll 0 0 #426fd9;
    color: #fff;
}
.trayA_topLevelTable {
    height: 100%;
    width: 100%;
}
.trayA_headerLink_open {
    color: #3e403d;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    text-decoration: none;
}
.trayA_headerLink_closed {
    color: #3e403d;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    text-decoration: none;
}
.trayA_cell_open {
    border-bottom: 1px solid #979991;
    height: auto;
    vertical-align: top;
}
.trayA_cell_closed {
    background: none repeat scroll 0 0 #979991;
    height: 1px;
}
.trayA_scrollBox {
    white-space: nowrap;
    width: 100%;
}
.trayA_content {
    white-space: nowrap;
}
.trayA_tabTable {
    background: none repeat scroll 0 0 #99a8ba;
    border-top: 1px solid #979991;
    height: 100%;
    width: 100%;
}
.trayA_tabLeftSideCell {
    height: 17px;
    width: 5px;
}
.trayA_tabRightSideCell {
    height: 17px;
    width: 4px;
}
.trayA_tabFaceCell_inFront {
    background: none repeat scroll 0 0 #fff;
    border-top: 1px solid #000;
    font-size: 8pt;
    width: auto;
}
.trayA_tabFaceCell_inBack {
    background: none repeat scroll 0 0 #fff;
    border-bottom: 1px solid #000;
    border-top: 1px solid #000;
    font-size: 8pt;
    width: 10px;
}
.trayA_tabFaceDiv_inFront {
    border-bottom: 1px solid #fff;
    color: #002165;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    padding-left: 4px;
    padding-right: 3px;
    padding-top: 1px;
    text-align: center;
    text-decoration: none;
    vertical-align: top;
    white-space: nowrap;
}
.trayA_tabFaceDiv_inBack {
    border-bottom: 1px solid #a4a8ad;
    color: #002165;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    padding-left: 4px;
    padding-right: 3px;
    padding-top: 1px;
    text-align: center;
    text-decoration: none;
    vertical-align: top;
    white-space: nowrap;
}
.trayA_tabTopMarginCell {
    border-bottom: 1px solid #000;
    font-size: 7px;
    text-align: right;
    vertical-align: middle;
    width: 100%;
}
.trayA_tabTopMarginLink {
    color: #002165;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    padding-left: 4px;
    padding-right: 4px;
    text-align: right;
    text-decoration: none;
    vertical-align: middle;
}
.trayA_tabTopMarginLink:hover {
    color: #004be5;
    text-decoration: underline;
}
.trayA_tabContentCell {
    background: none repeat scroll 0 0 #fff;
    border-right: 1px solid #a4a8ad;
    height: 100%;
}
.searchTray_caption {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    text-align: right;
    text-decoration: none;
    vertical-align: middle;
}
.searchTrayListTable {
    background: none repeat scroll 0 0 #fff;
}
.searchTrayPagingControlsCell {
    background: none repeat scroll 0 0 #fff;
    padding-bottom: 2px;
    padding-top: 3px;
}
.tabSpacerCell {
    border-bottom: 1px solid #0d4988;
    font-size: 1pt;
}
.frontTab_general {
    background: none repeat scroll 0 0 #fff;
    font-size: 1pt;
}
.frontTab_left {
    background: url("frontTab_MiddleLeft.gif") repeat-y scroll 0 0 #fff;
    font-size: 1pt;
    width: 10px;
}
.frontTab_right {
    background: url("frontTab_MiddleRight.gif") repeat-y scroll 0 0 #fff;
    font-size: 1pt;
    width: 10px;
}
.frontTab_contentCell {
    background: none repeat scroll 0 0 #fff;
    border-top: 1px solid #0d4988;
    padding-bottom: 3px;
    vertical-align: bottom;
}
.frontTab_contentText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    margin: 0;
    white-space: nowrap;
}
.rearTab_general {
    background: none repeat scroll 0 0 #dbe8f7;
    font-size: 1pt;
}
.rearTab_left {
    background: url("rearTab_MiddleLeft.gif") repeat-y scroll 0 0 #dbe8f7;
    font-size: 1pt;
    width: 10px;
}
.rearTab_right {
    background: url("rearTab_MiddleRight.gif") repeat-y scroll 0 0 #dbe8f7;
    font-size: 1pt;
    width: 10px;
}
.rearTab_contentCell {
    background: url("rearTab_contentCell.gif") repeat-x scroll 0 0 #dbe8f7;
    border-bottom: 1px solid #0d4988;
    border-top: 1px solid #63718c;
    vertical-align: bottom;
}
.rearTab_contentText {
    padding-bottom: 4px;
    vertical-align: bottom;
}
a.rearTab_linkText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: none;
    white-space: nowrap;
}
a.rearTab_linkText:hover {
    text-decoration: underline;
}
.xuiPageTitleText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    white-space: nowrap;
}
.xuiDisplayText_Sm {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
.xuiDisplayText_Sm_Bold {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
}
.xuiDisplayText_Med {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
.xuiDisplayText_Med_Bold {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
    font-weight: bold;
}
.xuiInfoText_Sm {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
.xuiInfoText_Sm_Bold {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
}
.xuiInfoText_Med {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
.xuiInfoText_Med_Bold {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
    font-weight: bold;
}
.xuiPageHeadingCell {
    border-bottom: 1px solid #0d4988;
    padding-bottom: 2px;
    text-align: left;
    vertical-align: bottom;
}
.xuiPageHeadingText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    margin: 0;
    white-space: nowrap;
}
.xuiSubheading {
    border-bottom: 1px solid #b3b6ad;
    color: #6d6e68;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    margin-bottom: 10px;
    margin-top: 30px;
    padding-bottom: 3px;
    text-align: left;
    width: 100%;
}
.xuiSubheadingContainer {
    border-bottom: 1px solid #b3b6ad;
    margin-bottom: 10px;
    margin-top: 30px;
    padding-bottom: 3px;
    text-align: left;
    width: 100%;
}
.xuiSubheadingMainText {
    color: #6d6e68;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    text-align: left;
}
.xuiSubheadingSecondary {
    float: right;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-align: right;
}
.xuiBreadcrumbCell {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    padding-top: 3px;
}
a.xuiBreadcrumb_link {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: none;
}
a.xuiBreadcrumb_link:hover {
    text-decoration: underline;
}
.xuiBreadcrumb_location {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: none;
}
a.xuiLinkText1_Sm {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
a.xuiLinkText1_Sm:hover {
    text-decoration: underline;
}
a.xuiLinkText2_XSm:hover {
    text-decoration: underline;
}
a.xuiLinkText2_Sm {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
a.xuiLinkText2_Sm:hover {
    text-decoration: underline;
}
a.xuiLinkText2_Sm_NoVisited {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-decoration: none;
}
a.xuiLinkText2_Sm_NoVisited:hover {
    text-decoration: underline;
}
.xuiFormField_Sm {
    display: inline;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    height: 20px;
    line-height: 8pt;
    vertical-align: middle;
}
.xuiListTable {
    background: none repeat scroll 0 0 #fff;
    border-collapse: separate;
    border-left: 1px solid #636661;
    border-right: 1px solid #636661;
    table-layout: fixed;
    width: 90%;
}
.xuiCaption {
    color: #6d6e68;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    padding-bottom: 5px;
    text-align: left;
    width: 100%;
}
.xuiDescription {
    color: #704a00;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-bottom: 5px;
    text-align: left;
    width: 90%;
}
.xuiListHeaderCell {
    background: url("TableHeadingBG.gif") repeat-x scroll 0 0 #dad9c8;
    border-bottom: 1px solid #979991;
    border-top: 1px solid #979991;
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 2px 2px 3px;
    text-align: center;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.xuiListHeaderLink {
    color: #000;
    font-size: 8pt;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}
.xuiListHeaderDiv {
    overflow: hidden;
    text-align: center;
    white-space: nowrap;
}
.xuiListCellDiv {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    overflow: hidden;
    text-align: left;
    white-space: nowrap;
}
.xuiListCellDivCenter {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    overflow: hidden;
    text-align: center;
    white-space: nowrap;
}
.xuiListResizeDragCell_Header {
    background: none repeat scroll 0 0 #bfc2b8;
    font-size: 1pt;
    width: 3px;
}
.xuiListResizeDragCell_Item {
    background: none repeat scroll 0 0 #bfc2b8;
    font-size: 1px;
    width: 3px;
}
.xuiListContentCell_Odd {
    background: none repeat scroll 0 0 #fff;
    border-bottom: 1px solid #979991;
    padding: 4px;
    text-align: center;
    vertical-align: middle;
}
.xuiListContentCell_Even {
    background: none repeat scroll 0 0 #fff;
    border-bottom: 1px solid #979991;
    padding: 4px;
    text-align: center;
    vertical-align: middle;
}
.xuiDamContentCell {
    background: none repeat scroll 0 0 #fff;
    padding: 0;
    text-align: left;
    vertical-align: top;
    width: auto;
}
.xuiDamTable {
    background: url("FullTanGradient_450H_R.gif") repeat-x scroll 0 0 #cbc2b1;
    border-collapse: separate;
    border-spacing: 1px;
    margin-top: 0;
    text-align: center;
}
.xuiDamResultTable {
    background: none repeat scroll 0 0 #fff;
    border-collapse: separate;
    border-spacing: 1px;
    height: 100%;
    padding: 3px;
    width: 100%;
}
.xuiPopupLink {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 0;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.xuiPopupLink_over {
    background: none repeat scroll 0 0 #d1dde7;
    border: 1px solid #d1dde7;
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 0;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.xuiPopupContainer {
    border-color: #fff;
    border-style: solid;
    border-width: 1px;
    position: absolute;
}
.xuiPopupContainerWithHeader {
    position: absolute;
}
.xuiPopupHeader {
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
    border-bottom: 1px solid #a9b6cb;
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 2px 10px 3px;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.xuiPopupSpacer {
    background: none repeat scroll 0 0 #a9b6cb;
    border-color: #fff;
    border-style: solid;
    border-width: 3px 1px;
    height: 1px;
    line-height: 1px;
}
.xuiFormButton_sm {
    color: #000;
    display: inline;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    padding: 0;
    vertical-align: middle;
}
TABLE {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
.xuiTable {
    width: 100%;
}
.xuiTitleTable {
    width: 100%;
}
TR {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
.xuiHeader {
    font-weight: bold;
}
.xuiError {
    color: #933;
    font-weight: bold;
}
.xuiRow {
    padding: 0.3em;
}
.xuiRowSm {
    font-size: 9pt;
}
.xuiBold {
    font-weight: bold;
}
.xuiBoldSm {
    font-size: 9pt;
    font-weight: bold;
}
.xuiAltRow {
    background: none repeat scroll 0 0 #f2f4f7;
    padding: 0.3em;
}
.xuiAltBold {
    background: none repeat scroll 0 0 #f2f4f7;
    font-weight: bold;
}
.xuiAltRowSm {
    background: none repeat scroll 0 0 #f2f4f7;
    font-size: 9pt;
}
.xuiAltBoldSm {
    background: none repeat scroll 0 0 #f2f4f7;
    font-size: 9pt;
    font-weight: bold;
}
.xuiAltHeader {
    background: url("XLtGrayBlueGradient_24H.gif") repeat-x scroll 0 0 #d3dbe9;
    border-bottom: 1px solid #5a83b9;
    border-top: 1px solid #5a83b9;
    color: #002165;
    font-weight: bold;
    padding: 0.2em 0.5em;
}
.xuiAltHeaderSm {
    background: url("XLtGrayBlueGradient_24H.gif") repeat-x scroll 0 0 #d3dbe9;
    border-bottom: 1px solid #5a83b9;
    border-top: 1px solid #5a83b9;
    color: #002165;
    font-size: 9pt;
    font-weight: bold;
}
.xuiSlimResultDesc {
    padding-left: 0.5em;
    padding-right: 0.5em;
    width: 100%;
}
.xuiSmallCell {
    padding-left: 0.5em;
    padding-right: 0.5em;
    text-align: center;
    width: 0;
}
.xuiDamInfoRow {
    background: none repeat scroll 0 0 #f2f4f7;
    text-align: center;
}
BODY {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
P {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
}
H4 {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 13pt;
}
H4.pageTitle {
    border-bottom: 1px solid #0d4988;
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 10pt;
    font-weight: bold;
    padding-bottom: 2px;
    text-align: left;
    white-space: nowrap;
    width: 100%;
}
SPAN {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
SPAN.medium {
    font-size: 12pt;
}
SPAN.small {
    font-size: 9pt;
}
SPAN.xsmall {
    font-size: 8pt;
}
td.configEntry {
    font-weight: bold;
}
SPAN.configLabel {
    font-weight: bold;
}
SPAN.infoLabel {
    font-size: 8pt;
    font-weight: bold;
    padding-left: 2px;
    padding-right: 2px;
}
SPAN.largeTableEntry {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
}
SPAN.largePageTitle {
    font-size: 14pt;
    font-weight: bold;
}
SPAN.mainTitle {
    font-size: 135%;
}
SPAN.mediumPageTitle {
    font-size: 12pt;
    font-weight: bold;
}
SPAN.reportColumn {
    font-weight: bold;
}
SPAN.reportColumnSmall {
    font-size: 8pt;
    font-weight: bold;
}
SPAN.requiredField {
    color: #933;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
SPAN.revLabelItem {
    font-size: 9pt;
    font-weight: bold;
}
SPAN.searchLabel {
    font-size: 8pt;
    font-weight: bold;
}
SPAN.smallHighlight {
    font-weight: bold;
}
SPAN.tableEntry {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 9pt;
}
SPAN.title {
    color: #000;
    font-size: 110%;
    font-weight: bold;
}
SPAN.errorMessage {
    color: #933;
    font-size: 14pt;
    font-weight: bold;
}
A.largeTableEntry {
    color: #000 !important;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    text-decoration: none;
}
INPUT.xsmall {
    font-size: 8pt;
}
.headMenu_Bar {
    background: url("HeaderMenuBarBG.gif") repeat-x scroll 0 0 #c3d0df;
    border: 1px solid #636661;
    margin-top: 0;
    text-align: right;
    width: 100%;
}
.headMenu_TopCollectionItemTable {
    background: none repeat scroll 0 0 transparent;
    height: 20px;
    margin-left: 1px;
    margin-right: 1px;
    vertical-align: middle;
}
.headMenu_TopCollectionItemTable_over {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    height: 20px;
    vertical-align: middle;
}
.headMenu_TopLinkItem {
    background: none repeat scroll 0 0 transparent;
    font-size: 8pt;
    height: 20px;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.headMenu_TopLinkItem_over {
    font-size: 8pt;
    height: 20px;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.listMenu_Bar {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("ListMenuBarBG.gif") repeat-x scroll 0 0 #f8f8ee;
    border-color: #636661;
    border-image: none;
    border-style: solid;
    border-width: 1px 1px 0;
    margin-bottom: 0;
    padding-bottom: 0;
    text-align: left;
    width: 100%;
}
.listMenu_TopCollectionItemTable {
    background: none repeat scroll 0 0 transparent;
    height: 20px;
    margin-left: 1px;
    margin-right: 1px;
    vertical-align: middle;
}
.listMenu_TopCollectionItemTable_over {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    height: 20px;
    vertical-align: middle;
}
.listMenu_TopLinkItem {
    background: none repeat scroll 0 0 transparent;
    font-size: 8pt;
    height: 20px;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.listMenu_TopLinkItem_over {
    font-size: 8pt;
    height: 20px;
    margin: 1px;
    padding-left: 11px;
    padding-right: 11px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuBarExtrasText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    vertical-align: middle;
}
div.tqsActionPopupMenu {
    padding: 0;
}
.ygtvspacer {
    height: 20px;
    width: 12px;
}
.ygtvitem {
    white-space: nowrap;
}
.child-of-tln {
    overflow: auto;
}
.ygtvlabel {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
}
.ygtvcontent {
    vertical-align: middle;
}
.ygtvblankdepthcell {
    height: 20px;
    width: 12px;
}
.ygtvchildren-toplevel {
    border-bottom: 1px solid #979991;
    overflow: auto;
}
.ygtvdepthcell {
    background: url("tree_I.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvtn {
    background: url("tree_T_item.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvtp {
    background: url("tree_T_collection_closed.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvtph {
    background: url("tree_T_collection_closed.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvtm {
    background: url("tree_T_collection_open.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvtmh {
    background: url("tree_T_collection_open.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvln {
    background: url("tree_L_item.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvlp {
    background: url("tree_L_collection_closed.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvlph {
    background: url("tree_L_collection_closed.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvlm {
    background: url("tree_L_collection_open.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvlmh {
    background: url("tree_L_collection_open.gif") no-repeat scroll 0 center transparent;
    height: 20px;
    width: 12px;
}
.ygtvimage {
    cursor: pointer;
}
.ygtvfocus {
    background-color: transparent;
}
.ygtvfocus .ygtvlabel {
    background-color: #d6e2ef !important;
    margin-left: 1px !important;
    padding: 1px;
}
.idcMaxWidthNode {
    width: 100%;
}
.ygtv-highlight .ygtv-highlight1 {
    background-color: #aaa;
    color: black;
}
.ygtv-highlight .ygtv-highlight1 .ygtvlabel {
    background-color: #aaa;
    color: black;
}
.centered {
    margin-left: auto;
    margin-right: auto;
    text-align: center;
}
.valignMiddle {
    vertical-align: middle;
}
.bold {
    font-weight: bold;
}
.paddedMessage {
    padding: 1px;
}
div.idc-tray dd.idc-tray-dd {
    display: none;
}
div.idc-tray dd.idc-tray-dd-expand {
    display: block;
}
div.idc-tray dd.idc-tray-dd-anim {
    display: block;
    overflow: hidden;
}
div.idc-tray dd.idc-tray-dd .idcTrayContent {
    height: 100%;
    overflow: auto;
    position: relative;
}
.idcAlertContainer {
    background: none repeat scroll 0 0 #ffc0cb;
    border: 1px solid black;
    display: block;
    margin-bottom: 12px;
    padding: 2px 2px 5px;
}
.idcAlertHeader {
    width: 100%;
}
.idcAlertHeader * td {
    vertical-align: middle;
}
.idcAlertIcon {
    text-align: center;
    width: 20px;
}
.idcAlertHeaderText {
    font-weight: bold;
    width: 99%;
}
.idcAlertCloseBox {
    text-align: center;
    width: 20px;
}
.idcAlertRows li {
    list-style-position: inside;
    list-style-type: disc;
    padding: 5px 5px 0;
}
.idcComponentReportInfo {
    display: none;
    padding: 10px 0 10px 10px;
}
.idcLoadedCompStatus {
    color: green;
    font-weight: bold;
}
.idcSkippedCompStatus {
    color: red;
    font-weight: bold;
}
.idcOrphanedComponentsDescription {
    font-weight: bold;
    padding-bottom: 10px;
}
.idcLocaleTable {
    margin-left: 70px;
}
.idcLocaleTable * td {
    padding: 0 3px 3px;
    vertical-align: middle;
}
.simpleHeader {
    background-image: url("ChildPageHeaderBG.gif");
    height: 24px;
}
.simpleHeaderImage {
    background-image: url("ChildPageHeaderGraphic.gif");
    height: 24px;
    width: 80px;
}
.yuimenu {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
    padding: 2px 0;
}
.ygtvpreload {
    height: 1px;
    left: 0;
    position: absolute;
    right: auto;
    top: -1000px;
    width: 1px;
}
.idcToolTipHelpImage {
    cursor: help;
    vertical-align: top;
}
#skipNavLink {
    left: 0;
    position: absolute;
    top: -500px;
}
#skipNavLink:hover {
    left: 0;
    position: absolute;
    top: -500px;
}
#skipNavLink:visited {
    left: 0;
    position: absolute;
    top: -500px;
}
#skipNavLink:active {
    background-color: yellow;
    color: red;
    left: 4px;
    position: absolute;
    top: 4px;
}
#skipNavLink:focus {
    background-color: yellow;
    color: red;
    left: 4px;
    position: absolute;
    top: 4px;
}
.accessListDiv {
    margin-bottom: 2px;
    min-height: 90px;
    min-width: 150px;
    padding: 1px;
}
.accessListDiv {
    border-collapse: separate;
    border-color: black;
    border-style: solid;
    border-width: 1px;
}
.accessListTable {
    width: 100%;
}
.accessListTableRow td {
    vertical-align: top;
}
.accessListTableRowChanged td {
    color: red;
    vertical-align: top;
    width: auto;
}
.accessListTableRowRemoved td {
    color: grey;
    text-decoration: line-through;
    vertical-align: top;
    width: auto;
}
.accessListItemRemove {
    height: 20px;
    text-align: left;
    width: 20px;
}
.accessListItemDisplay {
    text-align: left;
    width: auto;
}
.accessListItemPriv {
    height: 20px;
    text-align: right;
    width: 80px;
}
.accessListAddRow * {
    vertical-align: bottom;
}
.ContentWindowCell {
    border-top: 1px solid #f30;
}
.logoImageCell {
    color: #e7ebf7;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 13.5pt;
    font-weight: bold;
    padding: 1ex 10px 0 6pt;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
a.ygtvlabel:hover {
    text-decoration: underline;
}
.trayHeader {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    height: 20px;
    padding-left: 3px;
    vertical-align: middle;
    white-space: nowrap;
}
.trayHeaderArrow {
    float: left;
    height: 14px;
    padding-left: 5px;
    width: 10px;
}
.idcTopLevelNode .collapsed .trayHeaderArrow {
    background: url("trayA_arrow_right.gif") no-repeat scroll 50% center rgba(0, 0, 0, 0);
}
.idcTopLevelNode .expanded .trayHeaderArrow {
    background: url("trayA_arrow_down.gif") no-repeat scroll 50% center rgba(0, 0, 0, 0);
}
.trayHeaderLink {
    color: #3e403d;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    text-decoration: none;
}
.trayHeaderRight {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    vertical-align: middle;
    white-space: nowrap;
    width: 20px;
}
.trayBufferTop {
    background: none repeat scroll 0 0 #c3d0df;
    height: 100%;
}
.trayBufferBottom {
    background: none repeat scroll 0 0 #c3d0df;
    bottom: 0;
    height: 1px;
    position: absolute;
}
.leftNavFrameCell .ygtvcontent {
    white-space: nowrap;
}
.yuimenuitem-selected {
    background: none repeat scroll 0 0 #d1dde7;
}
.yuimenuitemlabel {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 2px 15px 2px 11px;
    text-align: left;
    text-decoration: none;
}
.yuimenuitemlabel-selected {
    border: 1px solid #d1dde7;
    color: #000;
    padding: 1px 14px 1px 10px;
}
.yuimenuitemlabel-disabled {
    color: #656772;
}
.yuimenuitemlabel-checked {
    font-weight: bold;
}
.idcMenuA .yuimenubaritem-selected {
    cursor: pointer;
}
.idcMenuA .yuimenubaritem-hassubmenu-selected {
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
}
.idcMenuA .yuimenubaritemlabel {
    color: #c5ffff;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 11px 4px;
    text-decoration: none;
}
.idcMenuA .yuimenubaritemlabel-selected {
    color: #c5ffff;
    text-decoration: underline;
}
.idcMenuA .yuimenubaritemlabel-hassubmenu {
    background: url("menuA_ArrowDown.gif") no-repeat scroll 4px 5px rgba(0, 0, 0, 0);
    color: #c5ffff;
    padding: 3px 12px 4px 18px;
}
.idcMenuA .yuimenubaritemlabel-hassubmenu-selected {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("menuA_ArrowDown_over.gif") no-repeat scroll 3px 4px rgba(0, 0, 0, 0);
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    color: #000;
    padding: 2px 11px 3px 17px;
    text-decoration: none;
}
.idcMenuC .yuimenubaritem-selected {
    cursor: pointer;
}
.idcMenuC .yuimenubaritem-hassubmenu-selected {
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
}
.idcMenuC .yuimenubaritemlabel {
    color: #c5ffff;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 11px 4px;
    text-decoration: none;
}
.idcMenuC .yuimenubaritemlabel-selected {
    color: #c5ffff;
    text-decoration: underline;
}
.idcMenuC .yuimenubaritemlabel-hassubmenu {
    background: url("menuA_ArrowDown.gif") no-repeat scroll 4px 5px rgba(0, 0, 0, 0);
    color: #c5ffff;
    padding: 3px 12px 4px 18px;
}
.idcMenuC .yuimenubaritemlabel-hassubmenu-selected {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background: url("menuA_ArrowDown_over.gif") no-repeat scroll 3px 4px rgba(0, 0, 0, 0);
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    color: #000;
    padding: 2px 11px 3px 17px;
    text-decoration: none;
}
.yui_idc_pageMenu .yuimenubaritem-selected {
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
}
.yui_idc_pageMenu .yuimenubaritemlabel {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 12px 4px;
    text-decoration: none;
}
.yui_idc_pageMenu .yuimenubaritemlabel-selected {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    padding: 2px 11px 3px;
}
.yui_idc_pageMenu .yuimenubaritemlabel-hassubmenu {
    background: url("headMenu_ArrowDown.gif") no-repeat scroll 3px 3px rgba(0, 0, 0, 0);
    padding: 3px 12px 4px 18px;
}
.yui_idc_pageMenu .yuimenubaritemlabel-hassubmenu-selected {
    background-image: url("headMenu_ArrowDown_over.gif");
    padding: 2px 11px 3px 17px;
}
.yui_idc_additionalPageMenu .yuimenubaritem-selected {
    background: url("MenuSelectGradient.gif") repeat-x scroll 0 0 #dde8ee;
}
.yui_idc_additionalPageMenu .yuimenubaritemlabel {
    background: none repeat scroll 0 0 transparent;
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    padding: 3px 12px 4px;
    text-decoration: none;
    white-space: nowrap;
}
.yui_idc_additionalPageMenu .yuimenubaritemlabel-selected {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #000 #768092 #768092;
    border-image: none;
    border-right: 1px solid #768092;
    border-style: solid;
    border-width: 1px;
    color: #000;
    padding: 2px 11px 3px;
}
.yui_idc_additionalPageMenu .yuimenubaritemlabel-hassubmenu {
    background: url("headMenu_ArrowDown.gif") no-repeat scroll 3px 3px rgba(0, 0, 0, 0);
    padding: 3px 12px 4px 18px;
}
.yui_idc_additionalPageMenu .yuimenubaritemlabel-hassubmenu-selected {
    background-image: url("headMenu_ArrowDown_over.gif");
    padding: 2px 11px 3px 17px;
}
.tqsActionPopupMenu.yuimenu ul {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #a9b6cb;
    border-image: none;
    border-style: solid;
    border-width: 0 0 1px;
}
.tqsActionPopupMenu .yuimenuitemlabel-disabled {
    color: #000;
}
.yuimenu ul.first-of-type {
    border-width: 0;
}
a.ygtvlabel {
    color: #039;
}
.QuickSearchCell {
    padding: 0.7ex 6pt 0 0;
    text-align: right;
    vertical-align: middle;
    white-space: nowrap;
}
.frameParentCell {
    background: none repeat scroll 0 0 #0d4988;
    padding: 0 5px 5px;
}
.frameDividerCell {
    background: none repeat scroll 0 0 #0d4988;
    width: 5px;
}
.targetedQSLabel {
    color: #d3e0f0;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: bold;
    padding: 0;
    text-align: right;
    vertical-align: middle;
    white-space: nowrap;
}
.menuA_HeaderCell {
    border-bottom: 1px solid #085189;
}
.menuA_HeaderLogoCell {
    background: none repeat scroll 0 0 #0d4988;
    height: 35px;
}
.menuA_TopLinkDiv {
    padding: 0 11px;
}
.menuA_TopMenuBarExtraTable {
    margin-left: auto;
    margin-right: 0;
}
.menuA_TopChildListTable {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
}
.menuA_SubChildListTable {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
}
.menuB_TopChildCollectionContainer {
    border-color: #fff;
    border-style: solid;
    border-width: 1px;
    left: 0;
    margin-top: -1px;
    position: absolute;
    top: 100%;
    z-index: 99;
}
.menuB_TopChildListTable {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
}
.menuB_SubChildCollectionContainer {
    border-color: #fff;
    border-style: solid;
    border-width: 1px;
    left: 99%;
    margin-left: -1px;
    position: absolute;
    top: 0;
    z-index: 99;
}
.menuB_SubChildListTable {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
}
.menuB_ChildCollectionItemTable {
    border: 1px solid #fff;
    vertical-align: middle;
}
.menuB_ChildCollectionItemTable_over {
    background: none repeat scroll 0 0 #d1dde7;
    border: 1px solid #d1dde7;
    vertical-align: middle;
}
.menuB_ChildCollectionItem {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 2px 3px 10px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_ChildCollectionItem_over {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 2px 3px 10px;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_ChildCollectionItemArrowCell {
    padding-right: 2px;
    text-align: right;
    vertical-align: middle;
}
.menuB_ChildLinkItem {
    font-size: 8pt;
    padding: 0;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
.menuB_ChildLinkItem_over {
    background: none repeat scroll 0 0 #d1dde7;
    border: 1px solid #d1dde7;
    font-size: 8pt;
    padding: 0;
    text-align: left;
    vertical-align: middle;
    white-space: nowrap;
}
a.menuB_ChildLinkText {
    color: #000;
    display: block;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding: 3px 10px;
    text-decoration: none;
    white-space: nowrap;
}
.trayA_header_closed {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    height: 19px;
    padding-left: 3px;
    vertical-align: middle;
    white-space: nowrap;
}
.trayA_header_open {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    height: 19px;
    padding-left: 3px;
    vertical-align: middle;
    white-space: nowrap;
}
.trayA_header_right_closed {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    height: 19px;
    padding-left: 3px;
    vertical-align: middle;
    white-space: nowrap;
}
.trayA_header_right_open {
    background: url("HeaderGradient_1.gif") repeat-x scroll 0 0 #dce9f8;
    height: 19px;
    padding-left: 3px;
    vertical-align: middle;
    white-space: nowrap;
}
.trayA_headerLink_open:hover {
    color: #3e403d;
}
.trayA_headerLink_closed:hover {
    color: #3e403d;
}
.trayA_buffer {
    background: none repeat scroll 0 0 #c3d0df;
}
.tabHeadingTransition_wMenu {
    background: none repeat scroll 0 0 #f0f6fc;
    border-left: 1px solid #636661;
    border-right: 1px solid #636661;
    height: 1px;
}
.xuiDisplayText_XSm {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
a.xuiBreadcrumb_link:visited {
    color: #72007c;
}
a.xuiLinkText1_Sm:visited {
    color: #72007c;
}
a.xuiLinkText2_XSm {
    color: #039;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
}
a.xuiLinkText2_XSm:visited {
    color: #72007c;
}
a.xuiLinkText2_Sm:visited {
    color: #72007c;
}
a.xuiLinkText2_Sm_NoVisited:visited {
    color: #039;
}
.xuiListHeaderCell-hover {
    background: url("TableHeadingBGHighlight.gif") repeat-x scroll 0 0 #dad9c8;
}
.xuiListHeaderLink:hover {
    color: #000;
    font-size: 8pt;
}
.xuiPopupTable {
    background: none repeat scroll 0 0 #fff;
    border-color: #a9b6cb #768092 #000;
    border-style: solid;
    border-width: 1px;
}
.xuiAltHeaderFirstColumn {
    border-left: 1px solid #5a83b9;
}
.xuiAltHeaderLastColumn {
    border-right: 1px solid #5a83b9;
}
H1 {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
}
H1.pageTitle {
    font-size: 10.5pt;
    font-weight: bold;
    margin-bottom: 10px;
}
.underlinePageTitle {
    border-bottom: 1px solid #0d4988;
    color: #000;
    font-size: 10pt;
    font-weight: bold;
    margin-bottom: 10px;
    margin-top: 10px;
    padding-bottom: 2px;
    text-align: left;
    white-space: nowrap;
    width: 100%;
}
H2 {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 13pt;
    margin-bottom: 10px;
}
H2.pageTitle {
    font-weight: bold;
}
H3 {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
}
H3.pageTitle {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
}
H5 {
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
}
H5.pageTitle {
    color: #000;
}
SPAN.xxsmall {
    font-size: 8pt;
}
SPAN.configEntry {
    font-weight: bold;
}
SPAN.errorHighlight {
    color: #933;
}
SPAN.highlightField {
    color: #4d4e4a;
}
A {
    color: #039;
}
.headMenu_TopCollectionItem {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    padding-left: 0;
    padding-right: 11px;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.headMenu_TopCollectionItem_over {
    color: #000;
    font-size: 8pt;
    padding-right: 11px;
}
.headMenu_TopCollectionItemArrowCell {
    padding-left: 3px;
    padding-right: 3px;
    text-align: right;
    vertical-align: middle;
}
a.headMenu_TopLinkText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-decoration: none;
}
a.headMenu_TopLinkText_over {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: underline;
}
.listMenu_TopCollectionItem {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    padding-left: 0;
    padding-right: 11px;
    text-align: left;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
}
.listMenu_TopCollectionItem_over {
    color: #000;
    font-size: 8pt;
    padding-right: 11px;
}
.listMenu_TopCollectionItemArrowCell {
    padding-left: 3px;
    padding-right: 3px;
    text-align: right;
    vertical-align: middle;
}
a.listMenu_TopLinkText {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    font-weight: normal;
    text-decoration: none;
}
a.listMenu_TopLinkText_over {
    color: #000;
    font-family: Tahoma,Arial,Bitstream Vera Sans,sans-serif;
    font-size: 8pt;
    text-decoration: underline;
}
.ygtvitem .collapsed .trayHeader {
    border-bottom: 1px solid #979991;
}
.collapsed .trayHeaderRight {
    border-bottom: 1px solid #979991;
}
.idcTopLevelNode td.ygtvfocus .trayHeaderLink {
    color: #c5ffff;
}
.idcTopLevelNode td.ygtvfocus {
    background: url("MenuABarBG.gif") repeat-x scroll 0 0 #0d4988;
}
.idcTopLevelNode td.ygtvfocus .trayHeaderRight {
    background: url("MenuABarBG.gif") repeat-x scroll 0 0 #0d4988;
}

    </style>
  </head>
  <body>
  </br></br>
  <table border="0" summary="">
  <tr>
  <td>
  &nbsp;&nbsp;&nbsp;
  </td>
  <td>
   <div class="mainContent">
        <table summary="">
            <tbody><tr>
                        <td width="565"><h1 class="underlinePageTitle">Check-In Confirmation for '<%=request.getAttribute("dDocTitle")%>'</h1></td>
                </tr>
            </tbody>
        </table>
        
        <table width="565" border="0" summary="">
        <tbody>
        <tr>
            <td>
                        <span class="infoLabel">Content ID: </span><span class="tableEntry"><%=request.getAttribute("dDocName")%></span>
                        &nbsp;&nbsp;<span style="color:#999999;font-weight:bold;" class="xxsmall">
                        <a href='http://lab01.onwardpath.com/cs/idcplg?IdcService=DOC_INFO&amp;dID=<%=request.getAttribute("dID")%>&amp;dDocName=<%=request.getAttribute("dDocName")%>'>[Content Info]</a>
                        </span>
                </td>
        </tr>
        <tr>
                <td><span class="infoLabel">Title:</span><span class="tableEntry"><%=request.getAttribute("dDocTitle")%></span></td>
        </tr>
        <tr>
                <td><span class="infoLabel">Checked in by:</span><span class="tableEntry"><%=request.getAttribute("dDocAuthor")%></span></td>
        </tr>
        <tr>
            <td><hr></td>
        </tr>
        
        
        </tbody></table>
    </div>
  
  </td>
  </tr>
  </table>
      
      
      </body>
</html>