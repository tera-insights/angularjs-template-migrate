{:ok, transformed_xml} = Xslt.transform("transformer.xsl","old.html")

File.write!("new.html", transformed_xml)
