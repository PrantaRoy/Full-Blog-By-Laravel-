<aside id="leftsidebar" class="sidebar">
    <!-- User Info -->
    <div class="user-info">
        <div class="image">
            <img src="<?php echo e(Storage::disk('public')->url('profile/'.Auth::user()->image)); ?>" width="48" height="48" alt="User" />
        </div>
        <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo e(Auth::user()->name); ?></div>
            <div class="email"><?php echo e(Auth::user()->email); ?></div>
            <div class="btn-group user-helper-dropdown">
                <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                <ul class="dropdown-menu pull-right">

                    <li>
                        <a href="<?php echo e(Auth::user()->role->id == 1 ? route('admin.settings') : route('author.settings')); ?>"><i class="material-icons">settings</i>Settings</a>
                    </li>

                    <li role="seperator" class="divider"></li>
                    <li>
                        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            <i class="material-icons">input</i>Sign Out
                        </a>

                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                            <?php echo csrf_field(); ?>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #User Info -->
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">MAIN NAVIGATION</li>

            <?php if(Request::is('admin*')): ?>
                <li class="<?php echo e(Request::is('admin/dashboard') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.dashboard')); ?>">
                        <i class="material-icons">dashboard</i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/tag*') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.tag.index')); ?>">
                        <i class="material-icons">label</i>
                        <span>Tag</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/category*') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.category.index')); ?>">
                        <i class="material-icons">apps</i>
                        <span>Category</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/post*') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.post.index')); ?>">
                        <i class="material-icons">library_books</i>
                        <span>Posts</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/pending/post') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.post.pending')); ?>">
                        <i class="material-icons">library_books</i>
                        <span>Pending Posts</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/favorite') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.favorite.index')); ?>">
                        <i class="material-icons">favorite</i>
                        <span>Favorite Posts</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/comments') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.comment.index')); ?>">
                        <i class="material-icons">comment</i>
                        <span>Comments</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/authors') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.author.index')); ?>">
                        <i class="material-icons">account_circle</i>
                        <span>Authors</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('admin/subscriber') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.subscriber.index')); ?>">
                        <i class="material-icons">subscriptions</i>
                        <span>Subscribers</span>
                    </a>
                </li>
                <li class="header">System</li>

                <li class="<?php echo e(Request::is('admin/settings') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('admin.settings')); ?>">
                        <i class="material-icons">settings</i>
                        <span>Settings</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <i class="material-icons">input</i>
                        <span>Logout</span>
                    </a>

                    <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                        <?php echo csrf_field(); ?>
                    </form>
                </li>
            <?php endif; ?>
            <?php if(Request::is('author*')): ?>
                <li class="<?php echo e(Request::is('author/dashboard') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('author.dashboard')); ?>">
                        <i class="material-icons">dashboard</i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('author/post*') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('author.post.index')); ?>">
                        <i class="material-icons">library_books</i>
                        <span>Posts</span>
                    </a>
                </li>
                <li class="<?php echo e(Request::is('author/favorite') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('author.favorite.index')); ?>">
                        <i class="material-icons">favorite</i>
                        <span>Favorite Posts</span>
                    </a>
                </li>

                <li class="<?php echo e(Request::is('author/comments') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('author.comment.index')); ?>">
                        <i class="material-icons">comment</i>
                        <span>Comments</span>
                    </a>
                </li>

                <li class="header">System</li>
                <li class="<?php echo e(Request::is('author/settings') ? 'active' : ''); ?>">
                    <a href="<?php echo e(route('author.settings')); ?>">
                        <i class="material-icons">settings</i>
                        <span>Settings</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <i class="material-icons">input</i>
                        <span>Logout</span>
                    </a>

                    <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                        <?php echo csrf_field(); ?>
                    </form>
                </li>
            <?php endif; ?>

        </ul>
    </div>
    <!-- #Menu -->
    <!-- Footer -->
    <div class="legal">
        <div class="copyright">
            &copy; 2016 - 2017 <a href="javascript:void(0);">AdminBSB - Material Design</a>.
        </div>
        <div class="version">
            <b>Version: </b> 1.0.5
        </div>
    </div>
    <!-- #Footer -->
</aside>