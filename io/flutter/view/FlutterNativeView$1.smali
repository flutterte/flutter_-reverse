.class Lio/flutter/view/FlutterNativeView$1;
.super Ljava/lang/Object;
.source "FlutterNativeView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/FlutterNativeView;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterNativeView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/flutter/view/FlutterNativeView$1;->this$0:Lio/flutter/view/FlutterNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    .line 39
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$1;->this$0:Lio/flutter/view/FlutterNativeView;

    # getter for: Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;
    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->access$000(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$1;->this$0:Lio/flutter/view/FlutterNativeView;

    # getter for: Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;
    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->access$000(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onFirstFrame()V

    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 0

    return-void
.end method
