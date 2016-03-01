#!/bin/bash

#So... the longest part of this code is obviously the variables. I organized the variable declarations by putting the two arrays with similar indices one after another. There are two variables: $journal_name and $url. My hope is that this will ensure that there is always a one-to-one correspondence between the journal and the URL for generating the report.

#It has to be organized like this (for York) because each part of the URL stored in the array has _slight_ differences (usually related to the journal number it was assigned in our previous installation). What this means is that I couldn't use one common URL with only the $journal_name changing. So whenever we need to add a journal to the code, just scroll to the bottom and follow the pattern with the next variable index.

#Note for URLs, we used to have a single OJS installation with many journals (which is why they all have a number). We have now moved to having a single OJS installation for every journal. I imagine that if you started with multiple OJS installations, you might actually have a uniform beginning URL. If so, there are other ways to declare bash arrays.

journal_name[0]=caml
url[0]="http://caml.journals.yorku.ca/index.php/caml/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2285%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[1]=cdd
url[1]="http://cdd.journals.yorku.ca/index.php/cdd/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22122%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[2]=cjs
url[2]="http://cjs.journals.yorku.ca/index.php/cjs/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22128%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[3]=claudel
url[3]="http://claudel.journals.yorku.ca/index.php/claudel/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22137%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[4]=cmc
url[4]="http://cmc.journals.yorku.ca/index.php/cmc/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22157%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[5]=core
url[5]="http://core.journals.yorku.ca/index.php/core/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2299%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[6]=crsp
url[6]="http://crsp.journals.yorku.ca/index.php/crsp/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22145%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[7]=currents
url[7]="http://currents.journals.yorku.ca/index.php/currents/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22160%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[8]=cwatch
url[8]="http://cwatch.journals.yorku.ca/index.php/cwatch/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22153%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[9]=cws
url[9]="http://cws.journals.yorku.ca/index.php/cws/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22107%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[10]=etopia
url[10]="http://etopia.journals.yorku.ca/index.php/etopia/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22159%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[11]=gjis
url[11]="http://gjis.journals.yorku.ca/index.php/gjis/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22151%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[12]=historicalpapers
url[12]="http://historicalpapers.journals.yorku.ca/index.php/historicalpapers/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22170%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[13]=hpsj
url[13]="http://hpsj.journals.yorku.ca/index.php/hpsj/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22154%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[14]=ht
url[14]="http://ht.journals.yorku.ca/index.php/ht/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22140%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[15]=hssh
url[15]="http://hssh.journals.yorku.ca/index.php/hssh/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22102%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[16]=ijcst
url[16]="http://ijcst.journals.yorku.ca/index.php/ijcst/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22112%22%3Bs%3A5%3A%22month%22%3Bs%3A8%3A%22"

journal_name[17]=ijfrp
url[17]="http://ijfrp.journals.yorku.ca/index.php/ijfrp/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22146%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[18]=intensions
url[18]="http://intensions.journals.yorku.ca/index.php/intensions/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22104%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[19]=jcacs
url[19]="http://jcacs.journals.yorku.ca/index.php/jcacs/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22117%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[20]=jid
url[20]="http://jid.journals.yorku.ca/index.php/jid/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2291%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[21]=jarm
url[21]="http://jarm.journals.yorku.ca/index.php/jarm/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2296%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[22]=justlabour
url[22]="http://justlabour.journals.yorku.ca/index.php/justlabour/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A1%3A%221%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[23]=jppal
url[23]="http://jppal.journals.yorku.ca/index.php/jppal/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22120%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[24]=lh
url[24]="http://lh.journals.yorku.ca/index.php/lh/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22103%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[25]=litte
url[25]="http://litte.journals.yorku.ca/index.php/litte/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22136%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[26]=ngn
url[26]="http://ngn.journals.yorku.ca/index.php/ngn/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22141%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[27]=pivot
url[27]="http://pivot.journals.yorku.ca/index.php/pivot/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22133%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[28]=protem
url[28]="http://protem.journals.yorku.ca/index.php/protem/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2297%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[29]=public
url[29]="http://public.journals.yorku.ca/index.php/public/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22138%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[30]=refuge
url[30]="http://refuge.journals.yorku.ca/index.php/refuge/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22130%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[31]=sclr
url[31]="http://sclr.journals.yorku.ca/index.php/sclr/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22149%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[32]=scripta
url[32]="http://scripta.journals.yorku.ca/index.php/scripta/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22169%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[33]=socj
url[33]="http://socj.journals.yorku.ca/index.php/socj/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22115%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[34]=soi
url[34]="http://soi.journals.yorku.ca/index.php/soi/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22111%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[35]=tessera
url[35]="http://tessera.journals.yorku.ca/index.php/tessera/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22126%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[36]=theoriandpraxis
url[36]="http://theoriandpraxis.journals.yorku.ca/index.php/theoriandpraxis/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22158%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[37]=topia
url[37]="http://topia.journals.yorku.ca/index.php/topia/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A2%3A%2284%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[38]=torquere
url[38]="http://torquere.journals.yorku.ca/index.php/torquere/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22161%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[39]=tusaaji
url[39]="http://tusaaji.journals.yorku.ca/index.php/tusaaji/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22134%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[40]=witness
url[40]="http://witness.journals.yorku.ca/index.php/witness/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22162%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[41]=yub
url[41]="http://yub.journals.yorku.ca/index.php/yub/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22152%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[42]=yujhs
url[42]="http://yujhs.journals.yorku.ca/index.php/yujhs/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22143%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

journal_name[43]=yourreview
url[43]="http://yourreview.journals.yorku.ca/index.php/yourreview/manager/generateReport?metricType=ojs%3A%3Acounter&columns[]=month&filters=a%3A3%3A%7Bs%3A10%3A%22assoc_type%22%3Ba%3A1%3A%7Bi%3A0%3Bs%3A3%3A%22260%22%3B%7Ds%3A10%3A%22context_id%22%3Bs%3A3%3A%22167%22%3Bs%3A5%3A%22month%22%3Bs%3A6%3A%22"

#this variable is because the last part of the URL is uniform and just makes life easier to construct the URL with the 'start' ($url); 'middle' ($month); 'end' ($last). No idea if this would be different on a different server installation. Replace with whatever comes after the date range in the URL -- if uniform. 
last="%22%3B%7D"

#This variable is to ensure that the loop runs for as many journals as there are.
loop=${#journal_name[@]}
count=0

#Prompting the user for their OJS login. 
read -p "Enter your username: " user

#This is the current solution to secure this script, since we really don't want the password stored in plain text. This way, the script will prompt the user for the admin password and then 'forget' it after the script is finished writing.
read -s -p "Enter your password: " pass

#query the user for a date in the form of YYYYMM, to give a value for the $month variable. 
echo "Enter the month desired for stats (YYYYMM):"
read month

mkdir /tmp/ojs

#This is the main loop to go to each site and download the stat report.
while [ $count -lt $loop ]
do
#This is the command that logs into each site (and sets the cookie for the next command that retrieves the stats report. 
    wget --post-data "username=$user&password=$pass&remember=1" --save-cookies /tmp/ojs-cookie.txt --keep-session-cookies --delete-after http://${journal_name[$count]}.journals.yorku.ca/index.php/${journal_name[$count]}/login/signIn

#This uses the cookie to grab and download the stats report. 
    wget --load-cookies /tmp/ojs-cookie.txt ${url[$count]}$month$last -O /tmp/ojs/${journal_name[$count]}.csv

    count=$(( $count + 1 ))
done

#This just grabs the first three lines from the first downloaded csv to grab the headers and such, to give the final report some context. If you have a different kind of stats report, you might have to change this to get the right part of the head.
head -n3 /tmp/ojs/${journal_name[0]}.csv > /tmp/test1.csv

#This grabs the last line of each csv -- the line with the data, if there is any -- and collects it into one file.
> /tmp/test2.csv
for i in /tmp/ojs/*.csv
do
    name=$(basename $i .csv)
    data=$(tail -n 1 $i) 
    echo "$name$data" >> /tmp/test2.csv
done

#This combines the two tmp files generated above and combines them into the final report. Even if you are using this to aggregate a different type of custom report, this should be fine, since it grabs the last line.
cat /tmp/test1.csv /tmp/test2.csv > OJS-monthly-download-stats_$month.csv

#The resulting CSV will be in the same directory as the script, with all additional files in the tmp directory. Obviously, this assumes a *nix computing environment, since I have no idea where the tmp directory is on Windows (or Macs, if not the same). The easiest way to change this would be to make the path the current directory.

#The MIT License (MIT)

#Copyright (c) 2015 nina de jesus

#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
