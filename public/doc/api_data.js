define({ "api": [
  {
    "type": "get",
    "url": "/3d/categories",
    "title": "3D服装行业",
    "version": "0.1.0",
    "name": "get3DCategory",
    "group": "3D",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/3d/categories",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>分类ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>分类名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "mods",
            "description": "<p>模特.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "mods.id",
            "description": "<p>模特ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "mods.image",
            "description": "<p>模特图片.</p>"
          }
        ]
      }
    },
    "filename": "doc/3d.js",
    "groupTitle": "3D",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/3d/categories"
      }
    ]
  },
  {
    "type": "get",
    "url": "/3d/models",
    "title": "3D模特图片",
    "version": "0.1.0",
    "name": "get3DModel",
    "group": "3D",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/3d/models",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>模特ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>模特图片.</p>"
          }
        ]
      }
    },
    "filename": "doc/3d.js",
    "groupTitle": "3D",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/3d/models"
      }
    ]
  },
  {
    "type": "post",
    "url": "/3d/warp",
    "title": "3D面料试衣",
    "version": "0.1.0",
    "name": "post3DWarp",
    "group": "3D",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/3d/warp",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "mod_id",
            "description": "<p>模特ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "goods_id",
            "description": "<p>面料ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "move_x",
            "description": "<p>布料在模特x轴的偏移，默认为0，可不传.</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "move_y",
            "description": "<p>布料在模特y轴的偏移，默认为0，可不传.</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "zoom",
            "description": "<p>布料放大百分比，默认为100，可不传.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>试衣效果图.</p>"
          }
        ]
      }
    },
    "filename": "doc/3d.js",
    "groupTitle": "3D",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/3d/warp"
      }
    ]
  },
  {
    "type": "get",
    "url": "/cart/history",
    "title": "历史购物车",
    "version": "0.1.0",
    "name": "getCartHistory",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/history",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID，默认可为空</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/history"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    }
  },
  {
    "type": "get",
    "url": "/cart/list",
    "title": "购物车",
    "version": "0.1.0",
    "name": "getCartList",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/list",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "status",
            "description": "<p>购物车状态 0待备货，1待支付</p>"
          }
        ]
      }
    },
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/list"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "price",
            "description": "<p>价格.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "num",
            "description": "<p>数量.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku",
            "description": "<p>商品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku.id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku.image",
            "description": "<p>图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku.title",
            "description": "<p>型号.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku.weight",
            "description": "<p>克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "stocks",
            "description": "<p>备货清单列表.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "stocks.unit",
            "description": "<p>N匹米数.</p>"
          }
        ]
      }
    }
  },
  {
    "type": "get",
    "url": "/cart/shop",
    "title": "选择供应商",
    "version": "0.1.0",
    "name": "getCartShop",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/shop",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>店铺ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>店铺名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>店铺图片.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/shop"
      }
    ]
  },
  {
    "type": "post",
    "url": "/cart/payment",
    "title": "确认支付",
    "version": "0.1.0",
    "name": "postCartPayment",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/payment",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "receiver_id",
            "description": "<p>收货地址ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "cart_ids",
            "description": "<p>购物车ID，选择多个商品时，用逗号分隔</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "payment",
            "description": "<p>付款金额</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/payment"
      }
    ]
  },
  {
    "type": "post",
    "url": "/cart/sku",
    "title": "添加型号",
    "version": "0.1.0",
    "name": "postCartSku",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/sku",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "sku_id",
            "description": "<p>商品ID,多个逗号分隔.</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "price",
            "description": "<p>价格,可以不传</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "num",
            "description": "<p>数量,可以不传</p>"
          }
        ]
      }
    },
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/sku"
      }
    ]
  },
  {
    "type": "post",
    "url": "/cart/sku/{id}/del",
    "title": "删除",
    "version": "0.1.0",
    "name": "postCartSkuDel",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/sku/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/sku/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/cart/sku/{id}/edit",
    "title": "编辑",
    "version": "0.1.0",
    "name": "postCartSkuEdit",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/sku/{id}/edit",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "price",
            "description": "<p>价格</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "num",
            "description": "<p>数量</p>"
          }
        ]
      }
    },
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/sku/{id}/edit"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    }
  },
  {
    "type": "post",
    "url": "/cart/stock",
    "title": "确认备货",
    "version": "0.1.0",
    "name": "postCartStock",
    "group": "Cart",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/stock",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "cart_ids",
            "description": "<p>确认配货的cart_id,多个逗号分隔。</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/cart.js",
    "groupTitle": "Cart",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/cart/stock"
      }
    ]
  },
  {
    "type": "get",
    "url": "/category/tags",
    "title": "分类列表",
    "version": "0.1.0",
    "name": "getTag",
    "group": "Category",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/category/tags",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>分类ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>分类名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "parent_id",
            "description": "<p>分类父ID,默认0.</p>"
          },
          {
            "group": "Success 200",
            "type": "Array",
            "optional": false,
            "field": "tags",
            "description": "<p>末级分类拥有关联标签tags.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "tags.id",
            "description": "<p>标签ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tags.name",
            "description": "<p>标签名称.</p>"
          }
        ]
      }
    },
    "filename": "doc/category.js",
    "groupTitle": "Category",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/category/tags"
      }
    ]
  },
  {
    "type": "get",
    "url": "/company/sku",
    "title": "产品列表",
    "version": "0.1.0",
    "name": "getCompanySku",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>0 下架 1上架.</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku"
      }
    ]
  },
  {
    "type": "get",
    "url": "/company/sku/{id}/view",
    "title": "产品详情",
    "version": "0.1.0",
    "name": "getCompanySkuView",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku/{id}/view",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "group",
            "description": "<p>一花多色.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "width",
            "description": "<p>门幅.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shrinkage",
            "description": "<p>缩水率.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>多个逗号分隔.</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku/{id}/view"
      }
    ]
  },
  {
    "type": "get",
    "url": "/company/user",
    "title": "成员列表",
    "version": "0.1.0",
    "name": "getCompanyUser",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>0邀请 1通过 2拒绝.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/user/{id}/apply",
    "title": "通过邀请",
    "version": "0.1.0",
    "name": "postCompanyApply",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user/{id}/apply",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user/{id}/apply"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/sku",
    "title": "添加产品",
    "version": "0.1.0",
    "name": "postCompanySku",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "group",
            "description": "<p>一花多色.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "width",
            "description": "<p>门幅.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "shrinkage",
            "description": "<p>缩水率.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>多个逗号分隔.</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/sku/{id}/del",
    "title": "产品删除",
    "version": "0.1.0",
    "name": "postCompanySkuDel",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/sku/{id}/edit",
    "title": "编辑产品",
    "version": "0.1.0",
    "name": "postCompanySkuEdit",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku/{id}/edit",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>多个逗号分隔.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "group",
            "description": "<p>一花多色.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "width",
            "description": "<p>门幅.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "shrinkage",
            "description": "<p>缩水率.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "group",
            "description": "<p>一花多色.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "width",
            "description": "<p>门幅.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shrinkage",
            "description": "<p>缩水率.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>多个逗号分隔.</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku/{id}/edit"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/sku/{id}/shelf",
    "title": "产品上架",
    "version": "0.1.0",
    "name": "postCompanySkuShelf",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku/{id}/shelf",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku/{id}/shelf"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/sku/{id}/unshelf",
    "title": "产品下架",
    "version": "0.1.0",
    "name": "postCompanySkuUnShelf",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/sku/{id}/unshelf",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/sku/{id}/unshelf"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/user/{id}/unapply",
    "title": "拒绝邀请",
    "version": "0.1.0",
    "name": "postCompanyUnApply",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user/{id}/unapply",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user/{id}/unapply"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/user",
    "title": "添加成员",
    "version": "0.1.0",
    "name": "postCompanyUser",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密码</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/user/{id}/del",
    "title": "取消邀请",
    "version": "0.1.0",
    "name": "postCompanyUserDel",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/company/user/invite",
    "title": "邀请成员",
    "version": "0.1.0",
    "name": "postCompanyUserInvite",
    "group": "Company",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/company/user/invite",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机</p>"
          }
        ]
      }
    },
    "filename": "doc/company.js",
    "groupTitle": "Company",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/company/user/invite"
      }
    ]
  },
  {
    "type": "get",
    "url": "/contact/list",
    "title": "通讯录",
    "version": "0.1.0",
    "name": "getContactList",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact/list",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>消息时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>状态 0未邀请 1已邀请 2 已注册.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact/list"
      }
    ]
  },
  {
    "type": "get",
    "url": "/contact/{id}/view",
    "title": "通讯录详情",
    "version": "0.1.0",
    "name": "getContactView",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact/{id}/view",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>消息时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>状态 0未邀请 1已邀请 2 已注册.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact/{id}/view"
      }
    ]
  },
  {
    "type": "post",
    "url": "/contact",
    "title": "添加",
    "version": "0.1.0",
    "name": "postContact",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>消息时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>状态 0未邀请 1已邀请 2 已注册.</p>"
          }
        ]
      }
    },
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact"
      }
    ]
  },
  {
    "type": "post",
    "url": "/contact/{id}/del",
    "title": "删除",
    "version": "0.1.0",
    "name": "postContactDel",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/contact/{id}/edit",
    "title": "编辑",
    "version": "0.1.0",
    "name": "postContactEdit",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact/{id}/edit",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>消息时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "company",
            "description": "<p>公司名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "address",
            "description": "<p>联系地址.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "status",
            "description": "<p>状态 0未邀请 1已邀请 2 已注册.</p>"
          }
        ]
      }
    },
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact/{id}/edit"
      }
    ]
  },
  {
    "type": "post",
    "url": "/contact/{id}/invite",
    "title": "邀请",
    "version": "0.1.0",
    "name": "postContactInvite",
    "group": "Contact",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/contact/{id}/invite",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/contact.js",
    "groupTitle": "Contact",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/contact/{id}/invite"
      }
    ]
  },
  {
    "type": "get",
    "url": "/goods/detail/:id",
    "title": "商品详情",
    "version": "0.1.0",
    "name": "GetGoodsDetail",
    "group": "Goods",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/goods/detail/:id",
        "type": "json"
      }
    ],
    "filename": "doc/goods.js",
    "groupTitle": "Goods",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/goods/detail/:id"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>门幅.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shrinkage",
            "description": "<p>缩水率.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "is_fav",
            "description": "<p>是否收藏.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "simlilar",
            "description": "<p>一花多色.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "simlilar.is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    }
  },
  {
    "type": "get",
    "url": "/shop/detail/:id",
    "title": "店铺详情",
    "version": "0.1.0",
    "name": "getShopDetail",
    "group": "Goods",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/shop/detail/:id",
        "type": "json"
      }
    ],
    "filename": "doc/goods.js",
    "groupTitle": "Goods",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/shop/detail/:id"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>店铺ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>店铺名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "location",
            "description": "<p>产地.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>店铺商品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    }
  },
  {
    "type": "post",
    "url": "/goods/find",
    "title": "商品筛选",
    "version": "0.1.0",
    "name": "postGoodsFind",
    "group": "Goods",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/goods/find",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>分类ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>分类名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "location",
            "description": "<p>产地.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>店铺商品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    },
    "filename": "doc/goods.js",
    "groupTitle": "Goods",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/goods/find"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "pagesize",
            "description": "<p>每页显示条数(queryString参数)。</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "page",
            "description": "<p>页码（queryString参数）。</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "tags",
            "description": "<p>筛选条件，多个条件用逗号(,)分隔。</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "keyword",
            "description": "<p>搜索条件，图片搜索时为图片文件。</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "type",
            "description": "<p>搜索类型，选项为(prod产品)(shop商家)，默认为产品。</p>"
          }
        ]
      }
    }
  },
  {
    "type": "get",
    "url": "/home/banners",
    "title": "首页轮播图",
    "version": "0.1.0",
    "name": "getBanner",
    "group": "Home",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/home/banners",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>轮播图.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "url",
            "description": "<p>链接地址.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "layout",
            "description": "<p>布局.</p>"
          }
        ]
      }
    },
    "filename": "doc/home.js",
    "groupTitle": "Home",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/home/banners"
      }
    ]
  },
  {
    "type": "get",
    "url": "/home/recommends",
    "title": "首页推荐",
    "version": "0.1.0",
    "name": "getRecommend",
    "group": "Home",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/home/recommends",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "tag_id",
            "description": "<p>标签id.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag_name",
            "description": "<p>标签名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "Array",
            "optional": false,
            "field": "skus",
            "description": "<p>标签下商品数组.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "skus.data.id",
            "description": "<p>商品id.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.data.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.data.title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.data.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.data.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.data.is_fav",
            "description": "<p>是否收藏 0 否 1 是.</p>"
          }
        ]
      }
    },
    "filename": "doc/home.js",
    "groupTitle": "Home",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/home/recommends"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/acclog/list",
    "title": "账单列表",
    "version": "0.1.0",
    "name": "getAcclogList",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/acclog/list",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "memo",
            "description": "<p>备注.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "current",
            "description": "<p>交易金额.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "status",
            "description": "<p>类型 0收入 1支出.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shop",
            "description": "<p>收款方.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>交易时间.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/acclog/list"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/acclog/shop",
    "title": "账号列表",
    "version": "0.1.0",
    "name": "getAcclogShop",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/acclog/shop",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "Number",
            "optional": false,
            "field": "balance",
            "description": "<p>余额.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/acclog/shop"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/count",
    "title": "数据统计",
    "version": "0.1.0",
    "name": "getCount",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/count",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "favs",
            "description": "<p>收藏.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "follows",
            "description": "<p>关注.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "footprints",
            "description": "<p>足迹.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/count"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/fav",
    "title": "收藏夹",
    "version": "0.1.0",
    "name": "getFavList",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/fav",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/fav"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/footprint",
    "title": "足迹",
    "version": "0.1.0",
    "name": "getFootprintList",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/footprint",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "type",
            "description": "<p>0 商品 1店铺 默认可以为空</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>店铺名称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "location",
            "description": "<p>产地.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>店铺商品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.id",
            "description": "<p>商品ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.sku",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.is_fav",
            "description": "<p>是否收藏(1是，0否).</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/footprint"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/shop",
    "title": "关注店铺列表",
    "version": "0.1.0",
    "name": "getShopList",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/shop",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>名称.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/shop"
      }
    ]
  },
  {
    "type": "get",
    "url": "/me/info",
    "title": "用户信息",
    "version": "0.1.0",
    "name": "getUserInfo",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/info",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>昵称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "avatar",
            "description": "<p>头像.</p>"
          },
          {
            "group": "Success 200",
            "type": "Boolean",
            "optional": false,
            "field": "is_admin",
            "description": "<p>是否是店铺管理员1是 0否.</p>"
          },
          {
              "group": "Success 200",
              "type": "Boolean",
              "optional": false,
              "field": "is_agent",
              "description": "<p>是否是经办人1是 0否.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/info"
      }
    ]
  },
    {
        "type": "post",
        "url": "/me/getAgentUser",
        "title": "经办人下面的用户",
        "version": "0.1.0",
        "name": "getAgentUser",
        "group": "Me",
        "examples": [
            {
                "title": "Example usage:",
                "content": "curl -i http://localhost/me/getAgentUser",
                "type": "json"
            }
        ],
        "success": {
            "fields": {
                "Success 200": [
                    {
                        "group": "Success 200",
                        "type": "String",
                        "optional": false,
                        "field": "id",
                        "description": "<p>用户ID.</p>"
                    },
                    {
                        "group": "Success 200",
                        "type": "String",
                        "optional": false,
                        "field": "phone",
                        "description": "<p>手机号码.</p>"
                    },
                    {
                        "group": "Success 200",
                        "type": "String",
                        "optional": false,
                        "field": "name",
                        "description": "<p>用户名.</p>"
                    },
                    {
                        "group": "Success 200",
                        "type": "String",
                        "optional": false,
                        "field": "avatar",
                        "description": "<p>头像.</p>"
                    }
                ]
            }
        },
        "permission": [
            {
                "name": "admin",
                "title": "登录授权.",
                "description": "<p>需要用户登录授权访问</p>"
            }
        ],
        "filename": "doc/me.js",
        "groupTitle": "Me",
        "sampleRequest": [
            {
                "url": "http://47.96.155.221/api/me/info"
            }
        ]
    },
  {
    "type": "post",
    "url": "/me/acclog",
    "title": "打款",
    "version": "0.1.0",
    "name": "postAcclog",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/acclog",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "current",
            "description": "<p>金额</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "bankname",
            "description": "<p>账号</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>打款凭证图片</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/acclog"
      }
    ]
  },
  {
    "type": "post",
    "url": "/me/fav/{id}/add",
    "title": "添加收藏夹",
    "version": "0.1.0",
    "name": "postFavAdd",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/fav/{id}/add",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/fav/{id}/add"
      }
    ]
  },
  {
    "type": "post",
    "url": "/me/fav/{id}/del",
    "title": "删除收藏夹",
    "version": "0.1.0",
    "name": "postFavDel",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/fav/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/fav/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/me/shop/{id}/follow",
    "title": "关注店铺",
    "version": "0.1.0",
    "name": "postShopFollow",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/fav/{id}/follow",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/shop/{id}/follow"
      }
    ]
  },
  {
    "type": "post",
    "url": "/me/shop/{id}/unfollow",
    "title": "取消关注店铺",
    "version": "0.1.0",
    "name": "postShopUnFollow",
    "group": "Me",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/me/fav/{id}/unfollow",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/me.js",
    "groupTitle": "Me",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/me/shop/{id}/unfollow"
      }
    ]
  },
  {
    "type": "get",
    "url": "/message/count",
    "title": "消息统计",
    "version": "0.1.0",
    "name": "getMessageCount",
    "group": "Message",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/message/count",
        "type": "json"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "notices",
            "description": "<p>通知.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus",
            "description": "<p>产品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "orders",
            "description": "<p>订单.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "accounts",
            "description": "<p>账户.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/message.js",
    "groupTitle": "Message",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/message/count"
      }
    ]
  },
  {
    "type": "get",
    "url": "/message/list",
    "title": "消息列表",
    "version": "0.1.0",
    "name": "getMessageList",
    "group": "Message",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/message/list",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "type",
            "description": "<p>消息类型 0通知 1产品 2订单 3账户</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>消息标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>消息时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>消息主体.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "readed",
            "description": "<p>已读标记 0未读 1已读.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/message.js",
    "groupTitle": "Message",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/message/list"
      }
    ]
  },
  {
    "type": "post",
    "url": "/message/{id}/del",
    "title": "删除消息",
    "version": "0.1.0",
    "name": "postMessageDel",
    "group": "Message",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/message/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/message.js",
    "groupTitle": "Message",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/message/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/message/{id}/read",
    "title": "标记已读",
    "version": "0.1.0",
    "name": "postMessageRead",
    "group": "Message",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/message/{id}/read",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/message.js",
    "groupTitle": "Message",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/message/{id}/read"
      }
    ]
  },
  {
    "type": "get",
    "url": "/order/list",
    "title": "订单列表",
    "version": "0.1.0",
    "name": "getOrderList",
    "group": "Order",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/order/list",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "status",
            "description": "<p>订单状态 0待发货，1已发货, 2已完成</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tid",
            "description": "<p>订单编号.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "payment",
            "description": "<p>订单合计金额.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "paytime",
            "description": "<p>下单时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "stockimage",
            "description": "<p>备货清单图.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "shipimage",
            "description": "<p>发货清单图.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>订单商品.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.title",
            "description": "<p>商品标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.price",
            "description": "<p>商品价格.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.num",
            "description": "<p>商品数量.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>商品图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>平方克重.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus.stocks",
            "description": "<p>备货清单列表.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.stocks.unit",
            "description": "<p>N匹米数.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/order.js",
    "groupTitle": "Order",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/order/list"
      }
    ]
  },
  {
    "type": "post",
    "url": "/order/{id}/comfirm",
    "title": "收货",
    "version": "0.1.0",
    "name": "postOrderConfirm",
    "group": "Order",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/order/{id}/comfirm",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "receiverimage",
            "description": "<p>收货清单图</p>"
          }
        ]
      }
    },
    "filename": "doc/order.js",
    "groupTitle": "Order",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/order/{id}/comfirm"
      }
    ]
  },
  {
    "type": "post",
    "url": "/order/{id}/ship",
    "title": "发货",
    "version": "0.1.0",
    "name": "postOrderShip",
    "group": "Order",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/order/{id}/ship",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "shipimage",
            "description": "<p>发货清单图</p>"
          }
        ]
      }
    },
    "filename": "doc/order.js",
    "groupTitle": "Order",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/order/{id}/ship"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/login",
    "title": "帐号登录",
    "version": "0.1.0",
    "name": "PostLogin",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/login",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "username",
            "description": "<p>用户名，手机号码或者邮箱.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密码.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>token值.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token_type",
            "description": "<p>token类型.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expires_in",
            "description": "<p>token有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/login"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/captcha",
    "title": "注册图形验证码",
    "version": "0.1.0",
    "name": "postCaptcha",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/captcha",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "captcha_key",
            "description": "<p>图形验证码key.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expired_at",
            "description": "<p>图形验证码有效期.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "captcha_image_content",
            "description": "<p>图形验证码内容.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/captcha"
      }
    ],
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "message",
            "description": "<p>获取图形验证码失败.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Response (example):",
          "content": "HTTP/1.1 422 Bad Request\n{\n  \"message\": \"获取图形验证码失败\"\n  \"errors\": {\n      \"phone\": [\n          \"validation.required\"\n      ]\n  },\n  \"status_code\": 422,\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/passport/loginByVerification",
    "title": "短信登录",
    "version": "0.1.0",
    "name": "postLoginByVerification",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/loginByVerification",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_key",
            "description": "<p>短信验证码key.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_code",
            "description": "<p>短信验证码(用户输入).</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>token值.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token_type",
            "description": "<p>token类型.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expires_in",
            "description": "<p>token有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/loginByVerification"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/logout",
    "title": "退出登录",
    "version": "0.1.0",
    "name": "postLogout",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/logout",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>token值.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/logout"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/passwordByVerification",
    "title": "短信找回密码",
    "version": "0.1.0",
    "name": "postPasswordByVerification",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/passwordByVerification",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_key",
            "description": "<p>短信验证码key.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_code",
            "description": "<p>短信验证码(用户输入).</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>新密码.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>token值.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token_type",
            "description": "<p>token类型.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expires_in",
            "description": "<p>token有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/passwordByVerification"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/refreshToken",
    "title": "刷新token值",
    "version": "0.1.0",
    "name": "postRefreshToken",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/refreshToken",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "token",
            "description": "<p>token值.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/refreshToken"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/register",
    "title": "帐号注册",
    "version": "0.1.0",
    "name": "postRegister",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/register",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_key",
            "description": "<p>短信验证码key.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "verification_code",
            "description": "<p>短信验证码(用户输入).</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>昵称.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>密码.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>返回在meta部分.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token_type",
            "description": "<p>返回在meta部分.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expires_in",
            "description": "<p>返回在meta部分.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>用户ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>昵称.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "email",
            "description": "<p>邮箱.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "avatar",
            "description": "<p>头像.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bound_phone",
            "description": "<p>绑定手机.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "bound_wechat",
            "description": "<p>绑定微信.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created_at",
            "description": "<p>创建时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "updated_at",
            "description": "<p>更新时间.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/register"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/{social_type}/login",
    "title": "第三方登录",
    "version": "0.1.0",
    "name": "postSocialLogin",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/{social_type}/login",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "code",
            "description": "<p>第三方返回code.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>第三方返回access_token.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "openid",
            "description": "<p>微信.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "access_token",
            "description": "<p>token值.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "token_type",
            "description": "<p>token类型.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expires_in",
            "description": "<p>token有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/{social_type}/login"
      }
    ]
  },
  {
    "type": "post",
    "url": "/passport/verificationCode",
    "title": "注册短信验证码",
    "version": "0.1.0",
    "name": "postVerificationCode",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/verificationCode",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "captcha_key",
            "description": "<p>图形验证码key.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "captcha_code",
            "description": "<p>图形验证码（用户输入）.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "verification_key",
            "description": "<p>短信验证码key.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expired_at",
            "description": "<p>短信验证码有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/verificationCode"
      }
    ],
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "message",
            "description": "<p>获取图形验证码失败.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Response (example):",
          "content": "HTTP/1.1 422 Bad Request\n{\n  \"message\": \"获取图形验证码失败\"\n  \"errors\": {\n      \"phone\": [\n          \"validation.required\"\n      ]\n  },\n  \"status_code\": 422,\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "post",
    "url": "/passport/verificationCodeByLoginAndPassword",
    "title": "登录和修改密码验证码",
    "version": "0.1.0",
    "name": "postVerificationCodeByLoginAndPassword",
    "group": "Passport",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/passport/verificationCodeByLoginAndPassword",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>手机号码.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "verification_key",
            "description": "<p>短信验证码key.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "expired_at",
            "description": "<p>短信验证码有效期.</p>"
          }
        ]
      }
    },
    "filename": "doc/passport.js",
    "groupTitle": "Passport",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/passport/verificationCodeByLoginAndPassword"
      }
    ],
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "optional": false,
            "field": "message",
            "description": "<p>获取图形验证码失败.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Response (example):",
          "content": "HTTP/1.1 422 Bad Request\n{\n  \"message\": \"获取图形验证码失败\"\n  \"errors\": {\n      \"phone\": [\n          \"validation.required\"\n      ]\n  },\n  \"status_code\": 422,\n}",
          "type": "json"
        }
      ]
    }
  },
  {
    "type": "get",
    "url": "/receiver/list",
    "title": "收货地址",
    "version": "0.1.0",
    "name": "getReceiverList",
    "group": "Receiver",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/receiver/list",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/receiver.js",
    "groupTitle": "Receiver",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/receiver/list"
      }
    ],
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>联系人.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>电话.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "province",
            "description": "<p>省份.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "city",
            "description": "<p>城市.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "area",
            "description": "<p>地区.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "street",
            "description": "<p>街道.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>标签.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "def",
            "description": "<p>是否默认地址，1默认.</p>"
          }
        ]
      }
    }
  },
  {
    "type": "post",
    "url": "/receiver",
    "title": "新增",
    "version": "0.1.0",
    "name": "postReceiver",
    "group": "Receiver",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/receiver",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/receiver.js",
    "groupTitle": "Receiver",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/receiver"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>联系人.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>电话.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "province",
            "description": "<p>省份.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "city",
            "description": "<p>城市.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "area",
            "description": "<p>地区.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "street",
            "description": "<p>街道.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>标签.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "def",
            "description": "<p>是否默认地址，1默认.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>联系人.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>电话.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "province",
            "description": "<p>省份.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "city",
            "description": "<p>城市.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "area",
            "description": "<p>地区.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "street",
            "description": "<p>街道.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>标签.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "def",
            "description": "<p>是否默认地址，1默认.</p>"
          }
        ]
      }
    }
  },
  {
    "type": "post",
    "url": "/receiver/{id}/def",
    "title": "默认地址",
    "version": "0.1.0",
    "name": "postReceiverDef",
    "group": "Receiver",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/receiver/{id}/def",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/receiver.js",
    "groupTitle": "Receiver",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/receiver/{id}/def"
      }
    ]
  },
  {
    "type": "post",
    "url": "/receiver/{id}/del",
    "title": "删除",
    "version": "0.1.0",
    "name": "postReceiverDel",
    "group": "Receiver",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/sku/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/receiver.js",
    "groupTitle": "Receiver",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/receiver/{id}/del"
      }
    ]
  },
  {
    "type": "post",
    "url": "/receiver/{id}/edit",
    "title": "编辑",
    "version": "0.1.0",
    "name": "postReceiverEdit",
    "group": "Receiver",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/cart/sku/{id}/edit",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/receiver.js",
    "groupTitle": "Receiver",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/receiver/{id}/edit"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>联系人.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>电话.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "province",
            "description": "<p>省份.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "city",
            "description": "<p>城市.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "area",
            "description": "<p>地区.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "street",
            "description": "<p>街道.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>标签.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "def",
            "description": "<p>是否默认地址，1默认.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "name",
            "description": "<p>联系人.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "phone",
            "description": "<p>电话.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "province",
            "description": "<p>省份.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "city",
            "description": "<p>城市.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "area",
            "description": "<p>地区.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "street",
            "description": "<p>街道.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tag",
            "description": "<p>标签.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "def",
            "description": "<p>是否默认地址，1默认.</p>"
          }
        ]
      }
    }
  },
  {
    "type": "get",
    "url": "/search/history",
    "title": "最近搜索列表",
    "version": "0.1.0",
    "name": "getHistory",
    "group": "Search",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/search/history",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "type",
            "description": "<p>全部0，默认可以不传,产品1,店铺2,店铺浏览记录3.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/search.js",
    "groupTitle": "Search",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/search/history"
      }
    ]
  },
  {
    "type": "post",
    "url": "/search/history",
    "title": "添加最近搜索",
    "version": "0.1.0",
    "name": "postHistory",
    "group": "Search",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/search/history",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "type",
            "description": "<p>产品1，默认可以不传,店铺2.</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "obj_id",
            "description": "<p>产品或店铺ID.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/search.js",
    "groupTitle": "Search",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/search/history"
      }
    ]
  },
  {
    "type": "post",
    "url": "/search/historyDel",
    "title": "清空最近搜索",
    "version": "0.1.0",
    "name": "postHistoryDel",
    "group": "Search",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/search/historyDel",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "type",
            "description": "<p>产品1，默认可以不传,店铺2.</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/search.js",
    "groupTitle": "Search",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/search/historyDel"
      }
    ]
  },
  {
    "type": "get",
    "url": "/texture/list",
    "title": "小样列表",
    "version": "0.1.0",
    "name": "getTextureList",
    "group": "Texture",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/texture/list",
        "type": "json"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "status",
            "description": "<p>小样状态 0未提交 1已发货</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tid",
            "description": "<p>订单编号.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>提交时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>小样商品. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.title",
            "description": "<p>小样标题. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>小样图片. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>小样材质. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>小样平方克重. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>小样标题. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>小样图片. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>小样材质. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>小样平方克重. （未提交）</p>"
          }
        ]
      }
    },
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/texture.js",
    "groupTitle": "Texture",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/texture/list"
      }
    ]
  },
  {
    "type": "post",
    "url": "/texture",
    "title": "提交",
    "version": "0.1.0",
    "name": "postTexture",
    "group": "Texture",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/texture",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "receiver_id",
            "description": "<p>默认收货地址</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "sku_ids",
            "description": "<p>小样商品编号ID，多个逗号分隔</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>记录ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "tid",
            "description": "<p>订单编号.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "created",
            "description": "<p>提交时间.</p>"
          },
          {
            "group": "Success 200",
            "type": "String[]",
            "optional": false,
            "field": "skus",
            "description": "<p>小样商品. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.title",
            "description": "<p>小样标题. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.image",
            "description": "<p>小样图片. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.material",
            "description": "<p>小样材质. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "skus.weight",
            "description": "<p>小样平方克重. （已发货）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>小样标题. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>小样图片. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>小样材质. （未提交）</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>小样平方克重. （未提交）</p>"
          }
        ]
      }
    },
    "filename": "doc/texture.js",
    "groupTitle": "Texture",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/texture"
      }
    ]
  },
  {
    "type": "post",
    "url": "/texture/sku",
    "title": "获取小样",
    "version": "0.1.0",
    "name": "postTextureSku",
    "group": "Texture",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/texture/sku",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "optional": false,
            "field": "shop_id",
            "description": "<p>店铺ID</p>"
          },
          {
            "group": "Parameter",
            "optional": false,
            "field": "sku_id",
            "description": "<p>小样商品ID</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "id",
            "description": "<p>小样ID.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "title",
            "description": "<p>小样标题.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "image",
            "description": "<p>小样图片.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "material",
            "description": "<p>小样材质.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "weight",
            "description": "<p>小样平方克重.</p>"
          }
        ]
      }
    },
    "filename": "doc/texture.js",
    "groupTitle": "Texture",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/texture/sku"
      }
    ]
  },
  {
    "type": "post",
    "url": "/texture/sku/{id}/del",
    "title": "删除小样",
    "version": "0.1.0",
    "name": "postTextureSkuDel",
    "group": "Texture",
    "examples": [
      {
        "title": "Example usage:",
        "content": "curl -i http://localhost/texture/sku/{id}/del",
        "type": "json"
      }
    ],
    "permission": [
      {
        "name": "admin",
        "title": "登录授权.",
        "description": "<p>需要用户登录授权访问</p>"
      }
    ],
    "filename": "doc/texture.js",
    "groupTitle": "Texture",
    "sampleRequest": [
      {
        "url": "http://47.96.155.221/api/texture/sku/{id}/del"
      }
    ]
  }
] });
