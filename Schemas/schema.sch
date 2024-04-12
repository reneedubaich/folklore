<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <pattern>
        <rule context="stooge">
            <assert  test='@name eq "Curly" or @name eq "Larry" or @name eq"Moe"'>
                name
            </assert>
        </rule>
    </pattern>
</sch:schema>