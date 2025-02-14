<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0"
  xmlns:metaschema="http://csrc.nist.gov/ns/metaschema/1.0"
  type="metaschema:make-xml-map" name="make-xml-map">
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Ports -->
  
  <p:input port="source" primary="true"/>
  <p:input port="parameters" kind="parameter"/>
  
  <p:serialization port="a.echo-input" indent="true"/>
  <p:output        port="a.echo-input" primary="false">
    <p:pipe        port="result"       step="input"/>
  </p:output>
  
  <p:serialization port="b.composed" indent="true"/>
  <p:output        port="b.composed" primary="false">
    <p:pipe        port="result"     step="composed"/>
  </p:output>
  
  <p:serialization port="c.definition-map" indent="true"/>
  <p:output        port="c.definition-map" primary="false">
    <p:pipe        port="result" step="make-definition-map"/>
  </p:output>
  
  <!--<p:serialization port="X1.xml-element-tree" indent="true"/>
  <p:output        port="X1.xml-element-tree" primary="false">
    <p:pipe        port="result" step="make-xml-element-tree"/>
  </p:output>
  
  <p:serialization port="X2.xml-model-html" indent="false" method="xml" omit-xml-declaration="false"/>
  <p:output        port="X2.xml-model-html" primary="false">
    <p:pipe        port="result" step="render-xml-model-map"/>
  </p:output>
  
  <p:serialization port="J1.json-object-tree" indent="true"/>
  <p:output        port="J1.json-object-tree" primary="false">
    <p:pipe        port="result" step="make-json-object-tree"/>
  </p:output>
  
  <p:serialization port="J2.json-model-html" indent="false" method="xml" omit-xml-declaration="false"/>
  <p:output        port="J2.json-model-html" primary="false">
    <p:pipe        port="result" step="render-json-model-map"/>
  </p:output>-->
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Import (subpipeline) -->
  
  <p:import href="compose/metaschema-compose.xpl"/>
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Pipeline -->
  
  <p:identity name="input"/>
  
  <metaschema:metaschema-compose name="compose"/>
  
  <p:identity name="composed"/>
 
</p:declare-step>