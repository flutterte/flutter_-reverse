.class Lio/flutter/embedding/android/FlutterTextureView$1;
.super Ljava/lang/Object;
.source "FlutterTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterTextureView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "FlutterTextureView"

    const-string p2, "SurfaceTextureListener.onSurfaceTextureAvailable()"

    .line 51
    invoke-static {p1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 p2, 0x1

    # setter for: Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z
    invoke-static {p1, p2}, Lio/flutter/embedding/android/FlutterTextureView;->access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z

    .line 57
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # getter for: Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # invokes: Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$200(Lio/flutter/embedding/android/FlutterTextureView;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureDestroyed()"

    .line 78
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 v0, 0x0

    # setter for: Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z

    .line 84
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # getter for: Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # invokes: Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$400(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # getter for: Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # getter for: Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 91
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 v0, 0x0

    # setter for: Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$502(Lio/flutter/embedding/android/FlutterTextureView;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureSizeChanged()"

    .line 65
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # getter for: Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    # invokes: Lio/flutter/embedding/android/FlutterTextureView;->changeSurfaceSize(II)V
    invoke-static {p1, p2, p3}, Lio/flutter/embedding/android/FlutterTextureView;->access$300(Lio/flutter/embedding/android/FlutterTextureView;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
