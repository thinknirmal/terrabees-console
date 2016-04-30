<%inherit file="base.mako"/>

<%block name="js">
    <script type="text/javascript">
        $(document).ready(function(){
            shared_utitilies.load_page('/dashboard');
        });
    </script>
</%block>