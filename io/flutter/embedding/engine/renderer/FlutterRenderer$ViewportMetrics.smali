.class public final Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewportMetrics"
.end annotation


# static fields
.field public static final unsetValue:I = -0x1


# instance fields
.field public devicePixelRatio:F

.field public displayFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public physicalTouchSlop:I

.field public systemGestureInsetBottom:I

.field public systemGestureInsetLeft:I

.field public systemGestureInsetRight:I

.field public systemGestureInsetTop:I

.field public viewInsetBottom:I

.field public viewInsetLeft:I

.field public viewInsetRight:I

.field public viewInsetTop:I

.field public viewPaddingBottom:I

.field public viewPaddingLeft:I

.field public viewPaddingRight:I

.field public viewPaddingTop:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 429
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    .line 431
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    .line 432
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingTop:I

    .line 433
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingRight:I

    .line 434
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingBottom:I

    .line 435
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewPaddingLeft:I

    .line 436
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetTop:I

    .line 437
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetRight:I

    .line 438
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetBottom:I

    .line 439
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->viewInsetLeft:I

    .line 440
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetTop:I

    .line 441
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetRight:I

    .line 442
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetBottom:I

    .line 443
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->systemGestureInsetLeft:I

    const/4 v0, -0x1

    .line 444
    iput v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->physicalTouchSlop:I

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->displayFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method validate()Z
    .locals 2

    .line 452
    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->height:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ViewportMetrics;->devicePixelRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
