.class Lio/flutter/embedding/android/FlutterSurfaceView$1;
.super Ljava/lang/Object;
.source "FlutterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterSurfaceView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "FlutterSurfaceView"

    const-string p2, "SurfaceHolder.Callback.surfaceChanged()"

    .line 61
    invoke-static {p1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # getter for: Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # invokes: Lio/flutter/embedding/android/FlutterSurfaceView;->changeSurfaceSize(II)V
    invoke-static {p1, p3, p4}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$300(Lio/flutter/embedding/android/FlutterSurfaceView;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.startRenderingToSurface()"

    .line 50
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    const/4 v0, 0x1

    # setter for: Lio/flutter/embedding/android/FlutterSurfaceView;->isSurfaceAvailableForRendering:Z
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z

    .line 53
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # getter for: Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # invokes: Lio/flutter/embedding/android/FlutterSurfaceView;->connectSurfaceToRenderer()V
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$200(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.stopRenderingToSurface()"

    .line 69
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    const/4 v0, 0x0

    # setter for: Lio/flutter/embedding/android/FlutterSurfaceView;->isSurfaceAvailableForRendering:Z
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z

    .line 72
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # getter for: Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    # invokes: Lio/flutter/embedding/android/FlutterSurfaceView;->disconnectSurfaceFromRenderer()V
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$400(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    :cond_0
    return-void
.end method
