.class public Lio/flutter/embedding/android/FlutterView;
.super Landroid/widget/FrameLayout;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;,
        Lio/flutter/embedding/android/FlutterView$ZeroSides;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterView"


# instance fields
.field private accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

.field private androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field private flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final flutterEngineAttachmentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;",
            ">;"
        }
    .end annotation
.end field

.field private flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

.field private flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

.field private flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private final flutterUiDisplayListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private isFlutterUiDisplayed:Z

.field private keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

.field private localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

.field private final onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

.field renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

.field private textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

.field private final viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

.field private final windowInfoListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 185
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 275
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {v0, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 111
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 133
    new-instance p1, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 142
    new-instance p1, Lio/flutter/embedding/android/FlutterView$2;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 163
    new-instance p1, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 336
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 337
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 339
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 111
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 133
    new-instance p1, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 142
    new-instance p1, Lio/flutter/embedding/android/FlutterView$2;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 163
    new-instance p1, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 311
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 312
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 314
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 111
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 133
    new-instance p1, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 142
    new-instance p1, Lio/flutter/embedding/android/FlutterView$2;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 163
    new-instance p1, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 323
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 324
    iput-object p3, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 326
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterTextureView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/RenderMode;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 130
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 133
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 142
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 163
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 197
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v0, :cond_0

    .line 198
    new-instance p2, Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {p2, p1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 199
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, v0, :cond_1

    .line 201
    new-instance p2, Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {p2, p1}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 202
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 208
    :goto_0
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    return-void

    .line 204
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "RenderMode not supported with this constructor: %s"

    .line 205
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/RenderMode;Lio/flutter/embedding/android/TransparencyMode;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    .line 130
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 133
    new-instance v0, Lio/flutter/embedding/android/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$1;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 142
    new-instance v0, Lio/flutter/embedding/android/FlutterView$2;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$2;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 163
    new-instance v0, Lio/flutter/embedding/android/FlutterView$3;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView$3;-><init>(Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 290
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 291
    new-instance p2, Lio/flutter/embedding/android/FlutterSurfaceView;

    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne p3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p2, p1, v1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 293
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    goto :goto_0

    .line 294
    :cond_1
    sget-object p3, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    if-ne p2, p3, :cond_2

    .line 295
    new-instance p2, Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {p2, p1}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    .line 296
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 302
    :goto_0
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->init()V

    return-void

    .line 298
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "RenderMode not supported with this constructor: %s"

    .line 299
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/android/TransparencyMode;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    new-instance v0, Lio/flutter/embedding/android/FlutterSurfaceView;

    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterView;ZZ)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterView;->resetWillNotDraw(ZZ)V

    return-void
.end method

.method static synthetic access$102(Lio/flutter/embedding/android/FlutterView;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    return p1
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterView;)Ljava/util/Set;
    .locals 0

    .line 96
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/android/FlutterImageView;
    .locals 0

    .line 96
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    return-object p0
.end method

.method private calculateShouldZeroSides()Lio/flutter/embedding/android/FlutterView$ZeroSides;
    .locals 3

    .line 578
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "window"

    .line 581
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 582
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    :goto_0
    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    .line 594
    :cond_3
    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v0

    .line 599
    :cond_4
    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v0
.end method

.method private findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 1018
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getAccessibilityViewId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 1022
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 1024
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    return-object p2

    .line 1032
    :cond_0
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1033
    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 1036
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1035
    invoke-direct {p0, p1, v1}, Lio/flutter/embedding/android/FlutterView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private guessBottomKeyboardInset(Landroid/view/WindowInsets;)I
    .locals 7

    .line 615
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 619
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    return p1
.end method

.method private init()V
    .locals 2

    const-string v0, "FlutterView"

    const-string v1, "Initializing FlutterView"

    .line 343
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    if-eqz v1, :cond_0

    const-string v1, "Internally using a FlutterSurfaceView."

    .line 346
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterSurfaceView:Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    if-eqz v1, :cond_1

    const-string v1, "Internally using a FlutterTextureView."

    .line 349
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterTextureView:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v1, "Internally using a FlutterImageView."

    .line 352
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x1

    .line 357
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setFocusable(Z)V

    .line 358
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setFocusableInTouchMode(Z)V

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const/4 v0, 0x4

    .line 360
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setImportantForAutofill(I)V

    :cond_2
    return-void
.end method

.method private resetWillNotDraw(ZZ)V
    .locals 2

    .line 1048
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isSoftwareRenderingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    .line 1049
    :cond_0
    invoke-virtual {p0, v1}, Lio/flutter/embedding/android/FlutterView;->setWillNotDraw(Z)V

    goto :goto_0

    .line 1051
    :cond_1
    invoke-virtual {p0, v1}, Lio/flutter/embedding/android/FlutterView;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method

.method private sendViewportMetricsToFlutter()V
    .locals 2

    .line 1394
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine."

    .line 1395
    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    .line 1403
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->physicalTouchSlop:I

    .line 1404
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->setViewportMetrics(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;)V

    return-void
.end method


# virtual methods
.method public acquireLatestImageViewFrame()Z
    .locals 1

    .line 1318
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->acquireLatestImage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;)V
    .locals 1

    .line 1352
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachOverlaySurfaceToRender(Lio/flutter/embedding/android/FlutterImageView;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/android/FlutterImageView;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_0
    return-void
.end method

.method public attachToFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 11

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching to a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-ne p1, v0, :cond_0

    const-string p1, "Already attached to this engine. Doing nothing."

    .line 1083
    invoke-static {v1, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Currently attached to a different engine. Detaching and then attaching to new engine."

    .line 1088
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    .line 1095
    :cond_1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1098
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->isDisplayingFlutterUi()Z

    move-result v1

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    .line 1100
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/renderer/RenderSurface;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1101
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 1105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 1106
    new-instance v0, Lio/flutter/plugin/mouse/MouseCursorPlugin;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getMouseCursorChannel()Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    .line 1108
    :cond_2
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1111
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getTextInputChannel()Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1112
    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 1113
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLocalizationPlugin()Lio/flutter/plugin/localization/LocalizationPlugin;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 1115
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/flutter/embedding/android/KeyChannelResponder;

    new-instance v3, Lio/flutter/embedding/android/KeyChannelResponder;

    .line 1120
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getKeyEventChannel()Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/flutter/embedding/android/KeyChannelResponder;-><init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/embedding/android/KeyboardManager;-><init>(Landroid/view/View;Lio/flutter/plugin/editing/TextInputPlugin;[Lio/flutter/embedding/android/KeyboardManager$Responder;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    .line 1122
    new-instance v0, Lio/flutter/embedding/android/AndroidTouchProcessor;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1123
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 1124
    new-instance v0, Lio/flutter/view/AccessibilityBridge;

    .line 1127
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getAccessibilityChannel()Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v7

    .line 1128
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 1129
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1130
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v10

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1131
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 1132
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1133
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1134
    invoke-virtual {v1}, Lio/flutter/view/AccessibilityBridge;->isTouchExplorationEnabled()Z

    move-result v1

    .line 1132
    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/android/FlutterView;->resetWillNotDraw(ZZ)V

    .line 1138
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 1139
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1140
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1141
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1146
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1149
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    .line 1150
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 1151
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    .line 1153
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/plugin/platform/PlatformViewsController;->attachToView(Landroid/view/View;)V

    .line 1156
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1157
    invoke-interface {v1, p1}, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;->onFlutterEngineAttachedToFlutterView(Lio/flutter/embedding/engine/FlutterEngine;)V

    goto :goto_0

    .line 1163
    :cond_3
    iget-boolean p1, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    if-eqz p1, :cond_4

    .line 1164
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-interface {p1}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    :cond_4
    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .line 855
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    .line 857
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public convertToImageView()V
    .locals 3

    .line 1242
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/RenderSurface;->pause()V

    .line 1244
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-nez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->createImageView()Lio/flutter/embedding/android/FlutterImageView;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 1246
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/android/FlutterImageView;->resizeIfNeeded(II)V

    .line 1251
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1252
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1253
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_1
    return-void
.end method

.method public createImageView()Lio/flutter/embedding/android/FlutterImageView;
    .locals 5

    .line 1233
    new-instance v0, Lio/flutter/embedding/android/FlutterImageView;

    .line 1234
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v3

    sget-object v4, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-object v0
.end method

.method protected createWindowInfoRepo()Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;
    .locals 3

    .line 456
    :try_start_0
    new-instance v0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    new-instance v1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 458
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Landroidx/window/layout/WindowInfoTracker$-CC;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    invoke-direct {v0, v1}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;-><init>(Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public detachFromFlutterEngine()V
    .locals 4

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching from a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView not attached to an engine. Not detaching."

    .line 1182
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;

    .line 1188
    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;->onFlutterEngineDetachedFromFlutterView()V

    goto :goto_0

    .line 1191
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachFromView()V

    .line 1194
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachAccessibiltyBridge()V

    .line 1197
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->release()V

    const/4 v0, 0x0

    .line 1198
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    .line 1204
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1205
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/TextInputPlugin;->destroy()V

    .line 1206
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyboardManager;->destroy()V

    .line 1208
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->mouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    if-eqz v1, :cond_2

    .line 1209
    invoke-virtual {v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;->destroy()V

    .line 1213
    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    const/4 v2, 0x0

    .line 1214
    iput-boolean v2, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    .line 1215
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 1216
    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 1217
    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->setSemanticsEnabled(Z)V

    .line 1220
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    if-ne v2, v3, :cond_3

    .line 1221
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1223
    :cond_3
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->detachFromRenderer()V

    .line 1225
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    .line 1226
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1227
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 873
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 878
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 884
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/KeyboardManager;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 885
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 7

    .line 982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 983
    invoke-direct {p0, p1, p0}, Lio/flutter/embedding/android/FlutterView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 992
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "findViewByAccessibilityIdTraversal"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 993
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 786
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 787
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    const/4 v1, 0x0

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 788
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 791
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 792
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 793
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 794
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v1, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating window insets (fitSystemWindows()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Left: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Right: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v2, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v2, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlutterView"

    invoke-static {v0, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    const/4 p1, 0x1

    return p1

    .line 816
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 956
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 1342
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method public getSystemPointerIcon(I)Landroid/view/PointerIcon;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public hasRenderedFirstFrame()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterView;->isFlutterUiDisplayed:Z

    return v0
.end method

.method public isAttachedToFlutterEngine()Z
    .locals 2

    .line 1330
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/RenderSurface;->getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 647
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 650
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 651
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    .line 653
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->right:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    .line 654
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    .line 655
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    .line 658
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWindowSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 660
    :goto_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getWindowSystemUiVisibility()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 662
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_5

    if-eqz v2, :cond_3

    .line 665
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v3, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 668
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    or-int/2addr v3, v1

    .line 670
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 671
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 672
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->right:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 673
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 674
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 676
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 677
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 678
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->right:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 679
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 680
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 683
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 684
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    .line 685
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->right:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    .line 686
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    .line 687
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    .line 692
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 694
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 695
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 697
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 698
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    .line 696
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 699
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    .line 701
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 702
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    .line 700
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 703
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    iget v4, v1, Landroid/graphics/Insets;->bottom:I

    .line 705
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 706
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    .line 704
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 707
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    iget v1, v1, Landroid/graphics/Insets;->left:I

    .line 709
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 710
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    .line 708
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    goto :goto_8

    .line 715
    :cond_5
    sget-object v4, Lio/flutter/embedding/android/FlutterView$ZeroSides;->NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-nez v2, :cond_6

    .line 717
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->calculateShouldZeroSides()Lio/flutter/embedding/android/FlutterView$ZeroSides;

    move-result-object v4

    .line 722
    :cond_6
    iget-object v5, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    iput v1, v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 723
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 724
    sget-object v5, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-eq v4, v5, :cond_9

    sget-object v5, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 726
    :cond_8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v5, 0x0

    :goto_4
    iput v5, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 727
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    if-eqz v2, :cond_a

    .line 728
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result v2

    if-nez v2, :cond_a

    .line 729
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 730
    :goto_5
    iput v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 731
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    .line 732
    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-eq v4, v2, :cond_c

    sget-object v2, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    if-ne v4, v2, :cond_b

    goto :goto_6

    .line 734
    :cond_b
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v2, 0x0

    :goto_7
    iput v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 737
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 738
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 739
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result p1

    iput p1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 740
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput v3, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 743
    :cond_d
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v2, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Right: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "System Gesture Insets - Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FlutterView"

    invoke-static {v1, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 477
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 478
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->createWindowInfoRepo()Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    .line 480
    invoke-virtual {v0, v1, v2, v3}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Configuration changed. Sending locales and user settings to Flutter."

    .line 420
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 422
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 838
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    .line 842
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->createInputConnection(Landroid/view/View;Lio/flutter/embedding/android/KeyboardManager;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 492
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoListener:Landroidx/core/util/Consumer;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    :cond_0
    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterView;->windowInfoRepo:Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;

    .line 496
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 922
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 923
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 939
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 943
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->accessibilityBridge:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityBridge;->onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 1409
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 1410
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size changed. Sending Flutter new viewport metrics. FlutterView was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", it is now "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FlutterView"

    invoke-static {p4, p3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput p1, p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    .line 449
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput p2, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    .line 450
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 896
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->isAttachedToFlutterEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 905
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 906
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 909
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngineAttachmentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public revertImageView(Ljava/lang/Runnable;)V
    .locals 3

    .line 1266
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    const-string v1, "FlutterView"

    if-nez v0, :cond_0

    const-string p1, "Tried to revert the image view, but no image view is used."

    .line 1267
    invoke-static {v1, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1270
    :cond_0
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    if-nez v2, :cond_1

    const-string p1, "Tried to revert the image view, but no previous surface was used."

    .line 1271
    invoke-static {v1, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1274
    :cond_1
    iput-object v2, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    const/4 v1, 0x0

    .line 1275
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterView;->previousRenderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    .line 1276
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-nez v1, :cond_2

    .line 1277
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->detachFromRenderer()V

    .line 1278
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1281
    :cond_2
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1283
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView;->flutterImageView:Lio/flutter/embedding/android/FlutterImageView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterImageView;->detachFromRenderer()V

    .line 1284
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1289
    :cond_3
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/renderer/RenderSurface;->attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 1293
    new-instance v1, Lio/flutter/embedding/android/FlutterView$4;

    invoke-direct {v1, p0, v0, p1}, Lio/flutter/embedding/android/FlutterView$4;-><init>(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    return-void
.end method

.method sendUserSettingsToFlutter()V
    .locals 3

    .line 1377
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1381
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->dark:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    goto :goto_1

    .line 1382
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->light:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    .line 1384
    :goto_1
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 1385
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getSettingsChannel()Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    move-result-object v1

    .line 1386
    invoke-virtual {v1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->startMessage()Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 1387
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setTextScaleFactor(F)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 1388
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setUse24HourFormat(Z)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 1389
    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setPlatformBrightness(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v0

    .line 1390
    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->send()V

    return-void
.end method

.method protected setWindowInfoListenerDisplayFeatures(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 6

    .line 505
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FlutterView"

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/DisplayFeature;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowInfoTracker Display Feature reported with bounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-interface {v1}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v2, v3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    instance-of v2, v1, Landroidx/window/layout/FoldingFeature;

    if-eqz v2, :cond_3

    .line 520
    move-object v2, v1

    check-cast v2, Landroidx/window/layout/FoldingFeature;

    .line 521
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getOcclusionType()Landroidx/window/layout/FoldingFeature$OcclusionType;

    move-result-object v3

    sget-object v4, Landroidx/window/layout/FoldingFeature$OcclusionType;->FULL:Landroidx/window/layout/FoldingFeature$OcclusionType;

    if-ne v3, v4, :cond_0

    .line 522
    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->HINGE:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    goto :goto_1

    .line 524
    :cond_0
    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->FOLD:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 526
    :goto_1
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v4

    sget-object v5, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne v4, v5, :cond_1

    .line 527
    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    goto :goto_2

    .line 528
    :cond_1
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v2

    sget-object v4, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-ne v2, v4, :cond_2

    .line 529
    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    goto :goto_2

    .line 531
    :cond_2
    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 533
    :goto_2
    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    invoke-interface {v1}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v4, v1, v3, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_3
    new-instance v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    .line 537
    invoke-interface {v1}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    invoke-direct {v2, v1, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V

    .line 535
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 545
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_5

    .line 546
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 548
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 550
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayCutout area reported with bounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;

    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->CUTOUT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    invoke-direct {v3, v1, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 557
    :cond_5
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView;->viewportMetrics:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;

    iput-object v0, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    .line 558
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterView;->sendViewportMetricsToFlutter()V

    return-void
.end method
