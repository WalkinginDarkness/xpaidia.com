{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block content %}
    {##################}
    {### HOME BLOCK ###}
    {##################}
  <div class="posts-expand">
  {#
    {%- for post in page.posts.toArray() %}
      {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
    {%- endfor %}
  #}
          <div class="category-all-page">
            <div class="category-all">
              {# 类别分类 #}
              {{ list_categories({class: 'category'}) }}
            </div>
          </div>
  </div>

  {# {% include '_partials/pagination.swig' %} #}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
