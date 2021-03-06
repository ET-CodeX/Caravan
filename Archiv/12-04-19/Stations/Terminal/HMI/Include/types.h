//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
TYPE
#pragma pack(push, 4)
  _XML_ATTRIBUTE : STRUCT
    Name : ^USINT;  //! <Type Comment="Name of the attribute" Name="_XML_ATTRIBUTE.Name"/>
    Value : ^USINT;  //! <Type Comment="Value of the attribute" Name="_XML_ATTRIBUTE.Value"/>
  END_STRUCT;
#pragma pack(pop)
#pragma pack(push, 4)
  _XML_ATTRIBUTE_LIST : STRUCT
    no : UDINT;  //! <Type Comment="Number of attributes" Name="_XML_ATTRIBUTE_LIST.no"/>
    pList : ^_XML_ATTRIBUTE;  //! <Type Comment="Pointer at the list of attributes" Name="_XML_ATTRIBUTE_LIST.pList"/>
  END_STRUCT;
#pragma pack(pop)
#pragma pack(push, 4)
  _XML_ELEMENT : STRUCT
    Name : ^USINT;  //! <Type Comment="Name of the element" Name="_XML_ELEMENT.Name"/>
    Attributes : _XML_ATTRIBUTE_LIST;  //! <Type Comment="Attribute list of the element" Name="_XML_ELEMENT.Attributes"/>
    pText : ^USINT;  //! <Type Comment="Pointer at the text of the element" Name="_XML_ELEMENT.pText"/>
    pChildren : ^_XML_ELEMENT;  //! <Type Comment="Pointer at the child-elements" Name="_XML_ELEMENT.pChildren"/>
    pFather : ^_XML_ELEMENT;  //! <Type Comment="Pointer at the father element" Name="_XML_ELEMENT.pFather"/>
    pNext : ^_XML_ELEMENT;  //! <Type Comment="Pointer at the next element at the same level" Name="_XML_ELEMENT.pNext"/>
    pPrevious : ^_XML_ELEMENT;  //! <Type Comment="Pointer at the previous element at the same level" Name="_XML_ELEMENT.pPrevious"/>
    isClosed : BOOL;  //! <Type Comment="True if element is already closed" Name="_XML_ELEMENT.isClosed"/>
  END_STRUCT;
#pragma pack(pop)
#pragma pack(push, 4)
  _XML_FILE : STRUCT
    Header : ^USINT;  //! <Type Comment="Header in the XML file" Name="_XML_FILE.Header"/>
    MajorElement : ^_XML_ELEMENT;  //! <Type Comment="Major and first element in the XML file" Name="_XML_FILE.MajorElement"/>
  END_STRUCT;
#pragma pack(pop)
END_TYPE
