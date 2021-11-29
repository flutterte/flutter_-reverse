.class Lio/flutter/plugin/platform/PlatformViewsController$1;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformViewsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformViewsController;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureValidAndroidVersion(I)V
    .locals 3

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    return-void

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to use platform views with API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", required API level is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearFocus(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void

    :cond_0
    const/16 v0, 0x14

    .line 350
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 351
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/VirtualDisplayController;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public createAndroidViewForPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V
    .locals 4

    const/16 v0, 0x13

    .line 129
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 131
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->direction:I

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->validateDirection(I)Z
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$100(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->getFactory(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 147
    iget-object v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewFactory;->getCreateArgsCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v1

    iget-object v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lio/flutter/plugin/common/MessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;
    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$200(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v2, v3, v1}, Lio/flutter/plugin/platform/PlatformViewFactory;->create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createVirtualDisplayForPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)J
    .locals 11

    const/16 v0, 0x14

    .line 180
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 181
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->direction:I

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->validateDirection(I)Z
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$100(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->getFactory(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    .line 202
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewFactory;->getCreateArgsCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v0

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    move-object v9, v0

    .line 206
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->logicalWidth:D

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I
    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$500(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v6

    .line 207
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->logicalHeight:D

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I
    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$500(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v7

    .line 208
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->validateVirtualDisplayDimensions(II)V
    invoke-static {v0, v6, v7}, Lio/flutter/plugin/platform/PlatformViewsController;->access$600(Lio/flutter/plugin/platform/PlatformViewsController;II)V

    .line 210
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$700(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/view/TextureRegistry;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 213
    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$200(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 214
    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    move-result-object v3

    iget v8, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    new-instance v10, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$e5c3C2OqVHT99mmO_tfarimG9XI;

    invoke-direct {v10, p0, p1}, Lio/flutter/plugin/platform/-$$Lambda$PlatformViewsController$1$e5c3C2OqVHT99mmO_tfarimG9XI;-><init>(Lio/flutter/plugin/platform/PlatformViewsController$1;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V

    move-object v5, v0

    .line 212
    invoke-static/range {v2 .. v10}, Lio/flutter/plugin/platform/VirtualDisplayController;->create(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/PlatformViewFactory;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/VirtualDisplayController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Landroid/view/View;
    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$900(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Landroid/view/View;
    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$900(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/flutter/plugin/platform/VirtualDisplayController;->onFlutterViewAttached(Landroid/view/View;)V

    .line 241
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v2, v2, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    iget v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v1

    .line 243
    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->direction:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 244
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object p1, p1, Lio/flutter/plugin/platform/PlatformViewsController;->contextToPlatformView:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    return-wide v0

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed creating virtual display for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create an already created platform view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposeAndroidViewForPlatformView(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 159
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$400(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->dispose()V

    :cond_1
    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->unsetOnDescendantFocusChangeListener()V

    .line 169
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;
    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$400(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method public disposeVirtualDisplayForPlatformView(I)V
    .locals 3

    const/16 v0, 0x14

    .line 253
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 254
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/plugin/editing/TextInputPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/plugin/editing/TextInputPlugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->clearPlatformViewClient(I)V

    .line 264
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, v1, Lio/flutter/plugin/platform/PlatformViewsController;->contextToPlatformView:Ljava/util/HashMap;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->dispose()V

    .line 266
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to dispose a platform view with unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$createVirtualDisplayForPlatformView$0$PlatformViewsController$1(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 223
    iget-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
    invoke-static {p2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1400(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    move-result-object p2

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;->viewId:I

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->invokeViewFocused(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;)V
    .locals 4

    .line 304
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;->viewId:I

    .line 305
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$200(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x14

    .line 306
    invoke-direct {p0, v2}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 307
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v2, v2, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;Z)Landroid/view/MotionEvent;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, v1, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;->viewId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/VirtualDisplayController;

    invoke-virtual {p1, v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 311
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;Z)Landroid/view/MotionEvent;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # getter for: Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;
    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;->viewId:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/PlatformView;

    invoke-interface {p1}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending touch to an unknown view with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resizePlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Ljava/lang/Runnable;)V
    .locals 5

    const/16 v0, 0x14

    .line 273
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 275
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->viewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->newLogicalWidth:D

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I
    invoke-static {v1, v2, v3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$500(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v1

    .line 282
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->newLogicalHeight:D

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I
    invoke-static {v2, v3, v4}, Lio/flutter/plugin/platform/PlatformViewsController;->access$500(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result p1

    .line 283
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->validateVirtualDisplayDimensions(II)V
    invoke-static {v2, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$600(Lio/flutter/plugin/platform/PlatformViewsController;II)V

    .line 289
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->lockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V
    invoke-static {v2, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1100(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/VirtualDisplayController;)V

    .line 290
    new-instance v2, Lio/flutter/plugin/platform/PlatformViewsController$1$1;

    invoke-direct {v2, p0, v0, p2}, Lio/flutter/plugin/platform/PlatformViewsController$1$1;-><init>(Lio/flutter/plugin/platform/PlatformViewsController$1;Lio/flutter/plugin/platform/VirtualDisplayController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/flutter/plugin/platform/VirtualDisplayController;->resize(IILjava/lang/Runnable;)V

    return-void

    .line 277
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to resize a platform view with unknown id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->viewId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setDirection(II)V
    .locals 3

    .line 324
    # invokes: Lio/flutter/plugin/platform/PlatformViewsController;->validateDirection(I)Z
    invoke-static {p2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 333
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->ensureValidAndroidVersion(I)V

    .line 334
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/VirtualDisplayController;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending touch to an unknown view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(view id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synchronizeToNativeViewHierarchy(Z)V
    .locals 1

    .line 367
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    # setter for: Lio/flutter/plugin/platform/PlatformViewsController;->synchronizeToNativeViewHierarchy:Z
    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1302(Lio/flutter/plugin/platform/PlatformViewsController;Z)Z

    return-void
.end method
