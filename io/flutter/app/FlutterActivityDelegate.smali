.class public final Lio/flutter/app/FlutterActivityDelegate;
.super Ljava/lang/Object;
.source "FlutterActivityDelegate.java"

# interfaces
.implements Lio/flutter/app/FlutterActivityEvents;
.implements Lio/flutter/view/FlutterView$Provider;
.implements Lio/flutter/plugin/common/PluginRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/FlutterActivityDelegate$ViewFactory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SPLASH_SCREEN_META_DATA_KEY:Ljava/lang/String; = "io.flutter.app.android.SplashScreenUntilFirstFrame"

.field private static final TAG:Ljava/lang/String; = "FlutterActivityDelegate"

.field private static final matchParent:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private flutterView:Lio/flutter/view/FlutterView;

.field private launchView:Landroid/view/View;

.field private final viewFactory:Lio/flutter/app/FlutterActivityDelegate$ViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    sput-object v0, Lio/flutter/app/FlutterActivityDelegate;->matchParent:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/app/FlutterActivityDelegate$ViewFactory;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    .line 100
    invoke-static {p2}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/app/FlutterActivityDelegate$ViewFactory;

    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->viewFactory:Lio/flutter/app/FlutterActivityDelegate$ViewFactory;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/flutter/app/FlutterActivityDelegate;->launchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lio/flutter/app/FlutterActivityDelegate;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 58
    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->launchView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/app/FlutterActivityDelegate;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method private addLaunchView()V
    .locals 3

    .line 446
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->launchView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    sget-object v2, Lio/flutter/app/FlutterActivityDelegate;->matchParent:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    new-instance v1, Lio/flutter/app/FlutterActivityDelegate$1;

    invoke-direct {v1, p0}, Lio/flutter/app/FlutterActivityDelegate$1;-><init>(Lio/flutter/app/FlutterActivityDelegate;)V

    invoke-virtual {v0, v1}, Lio/flutter/view/FlutterView;->addFirstFrameListener(Lio/flutter/view/FlutterView$FirstFrameListener;)V

    .line 481
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    const v1, 0x1030009

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method private createLaunchView()Landroid/view/View;
    .locals 3

    .line 380
    invoke-direct {p0}, Lio/flutter/app/FlutterActivityDelegate;->showSplashScreenUntilFirstFrame()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 383
    :cond_0
    invoke-direct {p0}, Lio/flutter/app/FlutterActivityDelegate;->getLaunchScreenDrawableFromActivityTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 387
    :cond_1
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 388
    sget-object v2, Lio/flutter/app/FlutterActivityDelegate;->matchParent:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private static getArgsFromIntent(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 5

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "trace-startup"

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "--trace-startup"

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "start-paused"

    .line 288
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "--start-paused"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "disable-service-auth-codes"

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "--disable-service-auth-codes"

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "use-test-fonts"

    .line 294
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "--use-test-fonts"

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "enable-dart-profiling"

    .line 297
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "--enable-dart-profiling"

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "enable-software-rendering"

    .line 300
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "--enable-software-rendering"

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "skia-deterministic-rendering"

    .line 303
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "--skia-deterministic-rendering"

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "trace-skia"

    .line 306
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "--trace-skia"

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "trace-systrace"

    .line 309
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "--trace-systrace"

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v1, "dump-skp-on-shader-compilation"

    .line 312
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "--dump-skp-on-shader-compilation"

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v1, "cache-sksl"

    .line 315
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "--cache-sksl"

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "purge-persistent-cache"

    .line 318
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "--purge-persistent-cache"

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v1, "verbose-logging"

    .line 321
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "--verbose-logging"

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v1, "observatory-port"

    .line 324
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_d

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--observatory-port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v1, "endless-trace-buffer"

    .line 328
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "--endless-trace-buffer"

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v1, "dart-flags"

    .line 334
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--dart-flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    .line 338
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 339
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLaunchScreenDrawableFromActivityTheme()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 404
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 405
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 408
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_1

    return-object v2

    .line 412
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "FlutterActivityDelegate"

    const-string v1, "Referenced launch screen windowBackground resource does not exist"

    .line 414
    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private isDebuggable()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "route"

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 351
    invoke-static {}, Lio/flutter/view/FlutterMain;->findAppBundlePath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v1, v0}, Lio/flutter/view/FlutterView;->setInitialRoute(Ljava/lang/String;)V

    .line 357
    :cond_1
    invoke-direct {p0, p1}, Lio/flutter/app/FlutterActivityDelegate;->runBundle(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private runBundle(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/FlutterNativeView;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->isApplicationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lio/flutter/view/FlutterRunArguments;

    invoke-direct {v0}, Lio/flutter/view/FlutterRunArguments;-><init>()V

    .line 367
    iput-object p1, v0, Lio/flutter/view/FlutterRunArguments;->bundlePath:Ljava/lang/String;

    const-string p1, "main"

    .line 368
    iput-object p1, v0, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    .line 369
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {p1, v0}, Lio/flutter/view/FlutterView;->runFromBundle(Lio/flutter/view/FlutterRunArguments;)V

    :cond_0
    return-void
.end method

.method private showSplashScreenUntilFirstFrame()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 425
    :try_start_0
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    .line 427
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    .line 428
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 429
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.app.android.SplashScreenUntilFirstFrame"

    .line 430
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 432
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFlutterView()Lio/flutter/view/FlutterView;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    return-object v0
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/FlutterPluginRegistry;->hasPlugin(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/app/FlutterPluginRegistry;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->popRoute()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 140
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 141
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 144
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 147
    :cond_0
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/app/FlutterActivityDelegate;->getArgsFromIntent(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/view/FlutterMain;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->viewFactory:Lio/flutter/app/FlutterActivityDelegate$ViewFactory;

    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lio/flutter/app/FlutterActivityDelegate$ViewFactory;->createFlutterView(Landroid/content/Context;)Lio/flutter/view/FlutterView;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-nez p1, :cond_1

    .line 152
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->viewFactory:Lio/flutter/app/FlutterActivityDelegate$ViewFactory;

    invoke-interface {p1}, Lio/flutter/app/FlutterActivityDelegate$ViewFactory;->createFlutterNativeView()Lio/flutter/view/FlutterNativeView;

    move-result-object p1

    .line 153
    new-instance v0, Lio/flutter/view/FlutterView;

    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V

    iput-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    .line 154
    sget-object p1, Lio/flutter/app/FlutterActivityDelegate;->matchParent:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Lio/flutter/view/FlutterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-direct {p0}, Lio/flutter/app/FlutterActivityDelegate;->createLaunchView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->launchView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 158
    invoke-direct {p0}, Lio/flutter/app/FlutterActivityDelegate;->addLaunchView()V

    .line 162
    :cond_1
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/app/FlutterActivityDelegate;->loadIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 166
    :cond_2
    invoke-static {}, Lio/flutter/view/FlutterMain;->findAppBundlePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 168
    invoke-direct {p0, p1}, Lio/flutter/app/FlutterActivityDelegate;->runBundle(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 229
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 230
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 231
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 232
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/flutter/app/FlutterApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v1}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/FlutterNativeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterPluginRegistry;->onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->viewFactory:Lio/flutter/app/FlutterActivityDelegate$ViewFactory;

    invoke-interface {v0}, Lio/flutter/app/FlutterActivityDelegate$ViewFactory;->retainFlutterNativeView()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->destroy()V

    goto :goto_1

    .line 242
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->detach()Lio/flutter/view/FlutterNativeView;

    :cond_3
    :goto_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 274
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onMemoryPressure()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Lio/flutter/app/FlutterActivityDelegate;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/flutter/app/FlutterActivityDelegate;->loadIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/FlutterPluginRegistry;->onNewIntent(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 187
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 188
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 190
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/flutter/app/FlutterApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onPause()V

    :cond_1
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 222
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    .line 129
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/app/FlutterPluginRegistry;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 208
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 209
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 211
    iget-object v1, p0, Lio/flutter/app/FlutterActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 201
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 217
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 268
    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->onMemoryPressure()V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 260
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->onUserLeaveHint()V

    return-void
.end method

.method public registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/FlutterPluginRegistry;->registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    move-result-object p1

    return-object p1
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate;->flutterView:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/FlutterPluginRegistry;->valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
