{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template with context %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ __('title.category') }}: {{ page.category }} | {{ title }}{% endblock %}

{% block content %}
{# 
is_post: {{ is_post() }} <br>
is_page: {{ is_page() }} <br>
is_CATEGORY: {{ is_category() }}
is_CATEGORY_Notes: {{ is_category('Notes') }}
{{ page.category }}
{{ list_categories(post.categories, {
  class: 'cat'
}) }}
#}
              
  {######################}
  {### CATEGORY BLOCK ###}
  {######################}
  <div class="post-block">
    <div class="posts-collapse">
      <div class="collection-title">
        <{%- if theme.seo %}h2{% else %}h1{%- endif %} class="collection-header">
          {{- page.category }}
          <small>{{ __('title.category') }}</small>
        </{%- if theme.seo %}h2{% else %}h1{%- endif %}>
      </div>

      {{ post_template.render(page.posts) }}
    </div>
  </div>
  {##########################}
  {### END CATEGORY BLOCK ###}
  {##########################}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
