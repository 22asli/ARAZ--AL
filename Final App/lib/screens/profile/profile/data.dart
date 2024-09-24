const List initProfileBlocks = [
  {
    "template": "default",
    "active": true,
    "data": {
      "name": "Bilgiler - Giriş Yap",
      "title": {
        "text": "Bilgiler",
      },
      "items": [
        {
          "active": false,
          "value": {
            "title": {
              "text": "Hesabım",
            },
            "icon": {
              "name": "user",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "screen",
              "route": "/profile/account",
              "args": {"name": "Account"}
            },
          },
        },
        {
          "active": false,
          "value": {
            "title": {
              "text": "Siparişler & İadeler",
            },
            "icon": {
              "name": "package",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "screen",
              "route": "/order_list",
              "args": {"name": "Order list"}
            },
          },
        },
        {
          "active": false,
          'value': {
            "title": {
              "text": "İndirilenler",
            },
            "icon": {
              "name": "download",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "screen",
              "route": "/profile/download",
              "args": {"name": "Download"}
            },
          },
        },
      ],
      "conditional": {
        "when_conditionals": "show_if",
        "conditionals": [
          [
            {"value1": "{isLogin}", "operator": "is_equal_to", "value2": "true"}
          ]
        ]
      }
    }
  },
  {
    "template": "default",
    "active": true,
    "data": {
      "name": "Settings",
      "title": {
        "text": "Settings",
      },
      "items": [
        {
          "active": false,
          "value": {
            "title": {
              "text": "Uygulama Ayarları",
            },
            "icon": {
              "name": "settings",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "screen",
              "route": "/profile/setting",
              "args": {"name": "Settings"}
            },
          },
        },
        {
          "active": false,
          "value": {
            "title": {
              "text": "Yardım & Kurumsal",
            },
            "icon": {
              "name": "info",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "screen",
              "route": "/profile/help_info",
              "args": {"name": "Hele & info"}
            },
          },
        },
        {
          "active": false,
          "value": {
            "title": {
              "text": "Yardım Hattı",
            },
            "subTitle": {"text": "05367808962"},
            "icon": {
              "name": "phone-forwarded",
              "type": "feather",
            },
            "enableChevron": true,
            "action": {
              "type": "launcher",
              "route": "/launcher",
              "args": {"url": "tel://05367808962", "name": "tel://05367808962"}
            },
          },
        },
        {
          "active": false,
          "value": {
            "title": {
              "text": "Çıkış Yap",
            },
            "icon": {
              "name": "log-out",
              "type": "feather",
            },
            "enableChevron": false,
            "action": {
              "type": "logout",
              "route": "/logout",
              "args": {"name": "Logout"}
            },
            "conditional": {
              "when_conditionals": "show_if",
              "conditionals": [
                [
                  {"value1": "{isLogin}", "operator": "is_equal_to", "value2": "true"}
                ]
              ]
            }
          },
        }
      ],
    },
  },
];
