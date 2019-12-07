<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Reference                                    -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      November 2009                                     -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA Reference//EN"                -->
<!--       Delivered as file "reference.mod"                            -->
<!-- ============================================================= -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Reference                          -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Removed old declaration for                -->
<!--                    referenceClasses entity                    -->
<!--    2005.11.15 RDA: Corrected LONG NAME for propdeschd         -->
<!--    2006.06.07 RDA: Added <abstract> element                   -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2        -->
<!--    2008.01.30 RDA: Replace @conref defn. with %conref-atts;   -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2008.05.06 RDA: Added refbodydiv                           -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % reference   "reference"                                   >
<!ENTITY % refbody     "refbody"                                     >
<!ENTITY % refbodydiv  "refbodydiv"                                  >
<!ENTITY % refsyn      "refsyn"                                      >
<!ENTITY % properties  "properties"                                  >
<!ENTITY % prophead    "prophead"                                    >
<!ENTITY % proptypehd  "proptypehd"                                  >
<!ENTITY % propvaluehd "propvaluehd"                                 >
<!ENTITY % propdeschd  "propdeschd"                                  >
<!ENTITY % property    "property"                                    >
<!ENTITY % proptype    "proptype"                                    >
<!ENTITY % propvalue   "propvalue"                                   >
<!ENTITY % propdesc    "propdesc"                                    >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % reference-info-types
              "%info-types;"
>
<!--                    LONG NAME: Reference                       -->
<!ENTITY % reference.content
                       "((%title;),
                         (%titlealts;)?,
                         (%abstract; |
                          %shortdesc;)?,
                         (%prolog;)?,
                         (%refbody;)?,
                         (%related-links;)?,
                         (%reference-info-types;)*)"
>
<!ENTITY % reference.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  reference %reference.content;>
<!ATTLIST  reference %reference.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Reference Body                  -->
<!ENTITY % refbody.content
                       "(%data.elements.incl; |
                         %example; |
                         %foreign.unknown.incl; |
                         %refbodydiv; |
                         %refsyn; |
                         %properties; |
                         %section; |
                         %simpletable; |
                         %table;)*"
>
<!ENTITY % refbody.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  refbody %refbody.content;>
<!ATTLIST  refbody %refbody.attributes;>


<!--                    LONG NAME: Reference Body division         -->
<!ENTITY % refbodydiv.content
                       "(%data.elements.incl; |
                         %example; |
                         %foreign.unknown.incl; |
                         %refbodydiv; |
                         %refsyn; |
                         %properties; |
                         %section; |
                         %simpletable; |
                         %table;)*"
>
<!ENTITY % refbodydiv.attributes
              "%univ-atts;"
>
<!ELEMENT  refbodydiv %refbodydiv.content;>
<!ATTLIST  refbodydiv %refbodydiv.attributes;>


<!--                    LONG NAME: Reference Syntax                -->
<!ENTITY % refsyn.content
                       "(%section.cnt; | %properties;)*"
>
<!ENTITY % refsyn.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  refsyn %refsyn.content;>
<!ATTLIST  refsyn %refsyn.attributes;>


<!--                    LONG NAME: Properties                      -->
<!ENTITY % properties.content
                       "((%prophead;)?,
                         (%property;)+)"
>
<!ENTITY % properties.attributes
              "relcolwidth
                          CDATA
                                    #IMPLIED
               keycol
                          NMTOKEN
                                    #IMPLIED
               spectitle
                          CDATA
                                    #IMPLIED
               %display-atts;
               %univ-atts;"
>
<!ELEMENT  properties %properties.content;>
<!ATTLIST  properties %properties.attributes;>


<!--                    LONG NAME: Property Head                   -->
<!ENTITY % prophead.content
                       "((%proptypehd;)?,
                         (%propvaluehd;)?,
                         (%propdeschd;)?)"
>
<!ENTITY % prophead.attributes
              "%univ-atts;"
>
<!ELEMENT  prophead %prophead.content;>
<!ATTLIST  prophead %prophead.attributes;>


<!--                    LONG NAME: Property Type Head              -->
<!ENTITY % proptypehd.content
                       "(%tblcell.cnt;)*"
>
<!ENTITY % proptypehd.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  proptypehd %proptypehd.content;>
<!ATTLIST  proptypehd %proptypehd.attributes;>


<!--                    LONG NAME: Property Value Head             -->
<!ENTITY % propvaluehd.content
                       "(%tblcell.cnt;)*"
>
<!ENTITY % propvaluehd.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  propvaluehd %propvaluehd.content;>
<!ATTLIST  propvaluehd %propvaluehd.attributes;>


<!--                    LONG NAME: Property Description Head       -->
<!ENTITY % propdeschd.content
                       "(%tblcell.cnt;)*"
>
<!ENTITY % propdeschd.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  propdeschd %propdeschd.content;>
<!ATTLIST  propdeschd %propdeschd.attributes;>


<!--                    LONG NAME: Property                        -->
<!ENTITY % property.content
                       "((%proptype;)?,
                         (%propvalue;)?,
                         (%propdesc;)?)"
>
<!ENTITY % property.attributes
              "%univ-atts;"
>
<!ELEMENT  property %property.content;>
<!ATTLIST  property %property.attributes;>


<!--                    LONG NAME: Property Type                   -->
<!ENTITY % proptype.content
                       "(%ph.cnt;)*"
>
<!ENTITY % proptype.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  proptype %proptype.content;>
<!ATTLIST  proptype %proptype.attributes;>


<!--                    LONG NAME: Property Value                  -->
<!ENTITY % propvalue.content
                       "(%ph.cnt;)*"
>
<!ENTITY % propvalue.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  propvalue %propvalue.content;>
<!ATTLIST  propvalue %propvalue.attributes;>


<!--                    LONG NAME: Property Description            -->
<!ENTITY % propdesc.content
                       "(%desc.cnt;)*"
>
<!ENTITY % propdesc.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  propdesc %propdesc.content;>
<!ATTLIST  propdesc %propdesc.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  reference    class CDATA "- topic/topic       reference/reference ">
<!ATTLIST  refbody      class CDATA "- topic/body        reference/refbody ">
<!ATTLIST  refbodydiv   class CDATA "- topic/bodydiv     reference/refbodydiv ">
<!ATTLIST  refsyn       class CDATA "- topic/section     reference/refsyn ">
<!ATTLIST  properties   class CDATA "- topic/simpletable reference/properties ">
<!ATTLIST  property     class CDATA "- topic/strow       reference/property ">
<!ATTLIST  proptype     class CDATA "- topic/stentry     reference/proptype ">
<!ATTLIST  propvalue    class CDATA "- topic/stentry     reference/propvalue ">
<!ATTLIST  propdesc     class CDATA "- topic/stentry     reference/propdesc ">
<!ATTLIST  prophead     class CDATA "- topic/sthead      reference/prophead ">
<!ATTLIST  proptypehd   class CDATA "- topic/stentry     reference/proptypehd ">
<!ATTLIST  propvaluehd  class CDATA "- topic/stentry     reference/propvaluehd ">
<!ATTLIST  propdeschd   class CDATA "- topic/stentry     reference/propdeschd ">

<!-- ================== End of DITA Reference ==================== -->
 