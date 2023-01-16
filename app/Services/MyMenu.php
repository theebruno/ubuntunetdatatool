<?php

namespace App\Services;

use Pratiksh\Adminetic\Traits\SidebarHelper;
use Pratiksh\Adminetic\Contracts\SidebarInterface;

class MyMenu implements SidebarInterface
{
    use SidebarHelper;

    public function myMenu(): array
    {
        return [

                        [
                'type' => 'breaker',
                'name' => 'General',
                'description' => 'User Control',
            ],

            [
                'type' => 'link',
                'name' => ' Dashboard',
                'icon' => 'fa fa-home',
                'link' => route('dashboard'),
                'is_active' => request()->routeIs('home') ? 'active' : '',
                // 'conditions' => [
                //     [
                //         'type' => 'and',
                //         'condition' => auth()->user()->hasRole('admin'),
                //     ],
                // ],
            ],
            [
                'type' => 'link',
                'name' => ' Answer Survey',
                'icon' => 'fa fa-pen',
                  'conditions' => [
                    [
                        'type' => 'and',
                        'condition' => auth()->user()->hasRole('user'),
                    ],
                ],
                'link' => route('answers'),
            ],
            [
                'type' => 'link',
                'name' => ' My responses',
                  'conditions' => [
                    [
                        'type' => 'and',
                        'condition' => auth()->user()->hasRole('user'),
                    ],
                ],
                'icon' => 'fa fa-book',
                'link' => route('replies'),
            ],
               [
                'type' => 'link',
                'name' => ' Reports',
                 'icon' => 'fa fa-tv',
                  'conditions' => [
                    [
                        'type' => 'and',
                        'condition' => auth()->user()->hasRole('user'),
                    ],
                ],
                'link' => route('singlereport'),
            ],
            [
                'type' => 'menu',
                'name' => 'Surveys',
                'icon' => 'fa fa-clipboard-list',
                'is_active' => request()->routeis('info*') ? 'active' : '',
             
                'conditions' => [
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('view-any', \App\Models\User::class),
                    ],
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('create', \App\Models\User::class),
                    ],
                ],
                'children' => [
                    [
                        'type' => 'submenu',
                        'name' => 'View Surveys',
                        'link' => route('infoview'),
                    ],
                    [
                        'type' => 'submenu',
                        'name' => 'Create Survey',
                        'link' => route('infoadd'),
                    ],
                   
                ]
            ],
            [
                'type' => 'menu',
                'name' => 'User Management',
                'icon' => 'fa fa-users',
                'is_active' => request()->routeIs('user*') ? 'active' : '',
                'pill' => [
                    'class' => 'badge badge-info badge-air-info',
                    'value' => \App\Models\User::count(),
                ],
                'conditions' => [
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('view-any', \App\Models\User::class),
                    ],
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('create', \App\Models\User::class),
                    ],
                ],
                'children' => $this->indexCreateChildren('user', \App\Models\User::class),
            ],
            [
                'type' => 'menu',
                'name' => 'Role',
                'icon' => 'fa fa-user-tie',
                'is_active' => request()->routeIs('role*') ? 'active' : '',
                'conditions' => [
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('view-any', \Pratiksh\Adminetic\Models\Admin\Role::class),
                    ],
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('create', \Pratiksh\Adminetic\Models\Admin\Role::class),
                    ],
                ],
                'children' => $this->indexCreateChildren('role', \Pratiksh\Adminetic\Models\Admin\Role::class),
            ],
            // [
            //     'type' => 'menu',
            //     'name' => 'Permission',
            //     'icon' => 'fa fa-check',
            //     'is_active' => request()->routeIs('permission*') ? 'active' : '',
            //     'conditions' => [
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('view-any', \Pratiksh\Adminetic\Models\Admin\Permission::class),
            //         ],
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('create', \Pratiksh\Adminetic\Models\Admin\Permission::class),
            //         ],
            //     ],
            //     'children' => $this->indexCreateChildren('permission', \Pratiksh\Adminetic\Models\Admin\Permission::class),
            // ],
            // [
            //     'type' => 'link',
            //     'name' => 'Setting',
            //     'icon' => 'fa fa-cog',
            //     'link' => adminRedirectRoute('setting'),
            //     'is_active' => request()->routeIs('home') ? 'active' : '',
            //     'conditions' => [
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('view-any', \Pratiksh\Adminetic\Models\Admin\Setting::class),
            //         ],
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('create', \Pratiksh\Adminetic\Models\Admin\Setting::class),
            //         ],
            //     ],
            // ],
            // [
            //     'type' => 'menu',
            //     'name' => 'Preference',
            //     'icon' => 'fa fa-wrench',
            //     'is_active' => request()->routeIs('preference*') ? 'active' : '',
            //     'conditions' => [
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('view-any', \Pratiksh\Adminetic\Models\Admin\Preference::class),
            //         ],
            //         [
            //             'type' => 'or',
            //             'condition' => auth()->user()->can('create', \Pratiksh\Adminetic\Models\Admin\Preference::class),
            //         ],
            //     ],
            //     'children' => $this->indexCreateChildren('preference', \Pratiksh\Adminetic\Models\Admin\Preference::class),
            // ],
            // [
            //     'type' => 'link',
            //     'name' => 'Activities',
            //     'icon' => 'fa fa-book',
            //     'is_active' => request()->routeIs('activity*') ? 'active' : '',
            //     'link' => adminRedirectRoute('activity'),
            //     'conditions' => [
            //         [
            //             'type' => 'and',
            //             'condition' => auth()->user()->hasRole('admin'),
            //         ],
            //     ],
            // ],
         
            // [
            //     'type' => 'menu',
            //     'name' => 'Documentation',
            //     'conditions' => [
            //         [
            //             'type' => 'or',
            //             'condition' => env('APP_ENV') == 'local'
            //         ],
            //     ],
            //     'children' => [
            //         [
            //             'type' => 'submenu',
            //             'name' => 'Frontend Docs',
            //             'link' => 'https://docs.pixelstrap.com/cuba/all_in_one/document/index.html',
            //         ],
            //         [
            //             'type' => 'submenu',
            //             'name' => 'Adminetic Docs',
            //             'link' => 'https://pratikdai404.gitbook.io/adminetic/',
            //         ],
            //     ]
            // ],
            // [
            //     'type' => 'link',
            //     'name' => ' Reports',
            //     'icon' => 'fa fa-tv',
            //     'link' => 'https://github.com/pratiksh404/admineticl',
            // ],

            // [
            //     'type' => 'link',
            //     'name' => ' Reports',
            //     'icon' => 'fa fa-tv',
            //     'link' => route('reports'),
              
            //     'conditions' => [
            //         [
            //             'type' => 'and',
            //             'condition' => auth()->user()->hasRole('admin'),
            //         ],
            //     ],
            // ],
                     [
                'type' => 'menu',
                'name' => 'Reports',
                'icon' => 'fa fa-tv',
                'is_active' => request()->routeis('info*') ? 'active' : '',
             
                'conditions' => [
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('view-any', \App\Models\User::class),
                    ],
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('create', \App\Models\User::class),
                    ],
                ],
                'children' => [
                    [
                        'type' => 'submenu',
                        'name' => 'Graphs',
                        'link' => route('reports'),
                    ],
                    [
                        'type' => 'submenu',
                        'name' => 'Fiches',
                        'link' => route('fiches'),
                    ],
                   
                ]
            ],
            [
                'type' => 'menu',
                'name' => 'NRENS',
                'icon' => 'far fa-address-book',
                'is_active' => request()->routeis('info*') ? 'active' : '',
             
                'conditions' => [
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('view-any', \App\Models\User::class),
                    ],
                    [
                        'type' => 'or',
                        'condition' => auth()->user()->can('create', \App\Models\User::class),
                    ],
                ],
                'children' => [
                    [
                        'type' => 'submenu',
                        'name' => 'NREN details',
                        'link' => route('nreninfo'),
                    ],
                    [
                        'type' => 'submenu',
                        'name' => 'Assign NREN',
                        'link' => route('assignnren'),
                    ],
                   
                ]
            ],
            // [
            //     'type' => 'link',
            //     'name' => 'Font Awesome',
            //     'icon' => 'fa fa-font"',
            //     'link' => route('fontawesome'),
            // ],
        ];
    }
}
