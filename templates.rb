module L2H2HTemplates

@templates = {
    '<!DOCTYPE.*?>' => '
<!DOCTYPE html>
',
    '<HTML>' => '
<HTML>
<!--(Re)Converted with LaTeX2HTML2HTML 2014 (1.0)
Ruby script by
* Jacopo Binosi
* b4inoz@gmail.com -->
',
    '<BODY.*?>' => '
<BODY>
<div class="wrapper">
<!--Header-->
<div class="header">
</div><!--End of Header-->
<!--Main-->
<div class="middle">
',

    '<!--Navigation Panel-->' => '
<!--Navigation Panel-->
<aside class="left-sidebar">
',

    '<!--End of Navigation Panel-->' => '
</aside><!--End of Navigation Panel-->
<div class="container">
<main class="content">
',

    '&nbsp;' => '',
    '<BR>' => '',
    '<P>' => '',
    '<HR>' => '',

    '<FONT.*?>' => '
<p>
',
    '</FONT>' => '
</p>
',

    '<ADDRESS>' => '
</main><!-- .content -->
</div><!-- .container-->
</div><!--End of Main-->
</div><!--End of Wrapper-->
<!--Footer-->
<footer class="footer">
<!--ADDRESS-->
<div class="adderss">
',

    '</ADDRESS>' => '
</div><!--End of ADDRESS-->
',

    '</BODY>' => '
</footer><!--End of Footer-->
</BODY>
'  
}

    def L2H2HTemplates.templates
        @templates
    end

end
