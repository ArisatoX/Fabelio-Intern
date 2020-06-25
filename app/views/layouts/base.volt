<!DOCTYPE html>
<html>
<head>

    <title>Fabelio</title>

    <!-- Load CSS -->
    {{ assets.outputCss() }}

</head>

<body>

    <!-- Content -->
    {% block content %} {% endblock %}

    <!-- Load JS -->
    {{ assets.outputJs() }}

</body>
</html>
