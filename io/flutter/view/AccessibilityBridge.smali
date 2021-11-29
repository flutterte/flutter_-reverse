.class public Lio/flutter/view/AccessibilityBridge;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityBridge$SemanticsNode;,
        Lio/flutter/view/AccessibilityBridge$LocaleStringAttribute;,
        Lio/flutter/view/AccessibilityBridge$SpellOutStringAttribute;,
        Lio/flutter/view/AccessibilityBridge$StringAttribute;,
        Lio/flutter/view/AccessibilityBridge$StringAttributeType;,
        Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;,
        Lio/flutter/view/AccessibilityBridge$TextDirection;,
        Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;,
        Lio/flutter/view/AccessibilityBridge$Flag;,
        Lio/flutter/view/AccessibilityBridge$Action;,
        Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_ON_SCREEN:I = 0x1020036

.field private static FIRST_RESOURCE_ID:I = 0x0

.field private static final FOCUSABLE_FLAGS:I

.field private static final MIN_ENGINE_GENERATED_NODE_ID:I = 0x10000

.field private static final ROOT_NODE_ID:I = 0x0

.field private static final SCROLLABLE_ACTIONS:I

.field private static final SCROLL_EXTENT_FOR_INFINITY:F = 100000.0f

.field private static final SCROLL_POSITION_CAP_FOR_INFINITY:F = 70000.0f

.field private static final TAG:Ljava/lang/String; = "AccessibilityBridge"


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private accessibilityFeatureFlags:I

.field private accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

.field private final accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

.field private final animationScaleObserver:Landroid/database/ContentObserver;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final customAccessibilityActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

.field private embeddedInputFocusedNodeId:Ljava/lang/Integer;

.field private final flutterNavigationStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterSemanticsTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$SemanticsNode;",
            ">;"
        }
    .end annotation
.end field

.field private hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private isReleased:Z

.field private lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

.field private lastLeftFrameInset:Ljava/lang/Integer;

.field private onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private final platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

.field private previousRouteId:I

.field private final rootAccessibilityView:Landroid/view/View;

.field private final touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    .line 94
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    iget v1, v1, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    const v0, 0xff00001

    .line 124
    sput v0, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 7

    .line 394
    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 4

    .line 414
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    .line 252
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    .line 262
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 265
    new-instance v1, Lio/flutter/view/AccessibilityBridge$1;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$1;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    .line 323
    new-instance v1, Lio/flutter/view/AccessibilityBridge$2;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$2;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 355
    new-instance v2, Lio/flutter/view/AccessibilityBridge$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lio/flutter/view/AccessibilityBridge$3;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/os/Handler;)V

    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    .line 415
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 416
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 417
    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 418
    iput-object p4, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    .line 419
    iput-object p5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 420
    iput-object p6, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 424
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 425
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 429
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 430
    new-instance p1, Lio/flutter/view/AccessibilityBridge$4;

    invoke-direct {p1, p0, p3}, Lio/flutter/view/AccessibilityBridge$4;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 452
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    .line 451
    invoke-interface {p1, p2}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 453
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 461
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    .line 462
    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "transition_animation_scale"

    .line 463
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 464
    invoke-virtual {p4, p1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 472
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lio/flutter/view/AccessibilityBridge;)Landroid/content/ContentResolver;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1172(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1

    .line 77
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return p1
.end method

.method static synthetic access$1176(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 1

    .line 77
    iget v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    return p1
.end method

.method static synthetic access$1200(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->sendLatestAccessibilityFlagsToFlutter()V

    return-void
.end method

.method static synthetic access$1300(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    return-void
.end method

.method static synthetic access$200(Lio/flutter/view/AccessibilityBridge;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityBridge;II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityBridge;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    return p0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityMessageHandler:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    return-object p0
.end method

.method static synthetic access$6600(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object p0
.end method

.method static synthetic access$7000()I
    .locals 1

    .line 77
    sget v0, Lio/flutter/view/AccessibilityBridge;->SCROLLABLE_ACTIONS:I

    return v0
.end method

.method static synthetic access$7100()I
    .locals 1

    .line 77
    sget v0, Lio/flutter/view/AccessibilityBridge;->FOCUSABLE_FLAGS:I

    return v0
.end method

.method static synthetic access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-object p0
.end method

.method static synthetic access$900(Lio/flutter/view/AccessibilityBridge;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    const/16 v0, 0x10

    .line 1772
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1773
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1774
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1777
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1778
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1786
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1788
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1789
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v1, v0, :cond_4

    if-lt v2, v0, :cond_4

    .line 1791
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 1797
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 1798
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    return-object p1
.end method

.method private doesLayoutInDisplayCutoutModeRequireLeftInset()Z
    .locals 3

    .line 1918
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1919
    invoke-static {v0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1920
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1925
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 950
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 952
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 953
    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    .locals 2

    .line 1416
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;-><init>()V

    .line 1419
    # setter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4202(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1420
    sget v1, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    add-int/2addr v1, p1

    # setter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3402(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1421
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2

    .line 1395
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v0, :cond_0

    .line 1397
    new-instance v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-direct {v0, p0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    .line 1398
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1399
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    .locals 2

    .line 1381
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    return-object v0
.end method

.method private handleTouchExploration(FF)V
    .locals 3

    .line 1489
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1493
    :cond_0
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, v1, p1

    const/4 p1, 0x3

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v1, p1

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p1

    .line 1494
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_1

    .line 1498
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    const/16 v0, 0x80

    .line 1497
    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1500
    :cond_1
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p2, :cond_2

    .line 1501
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    const/16 v0, 0x100

    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1503
    :cond_2
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_3
    return-void
.end method

.method static synthetic lambda$shouldSetCollectionInfo$0(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$shouldSetCollectionInfo$1(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 1

    .line 539
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p0, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p0

    return p0
.end method

.method private obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1903
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 1904
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1905
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private onTouchExplorationExit()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 1474
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    const/4 v0, 0x0

    .line 1475
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_0
    return-void
.end method

.method private onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 3

    .line 1847
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getRouteName()Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 1859
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 1860
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setAccessibilityPaneTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1863
    :cond_1
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1864
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method private performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z
    .locals 3

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1206
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1208
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 1211
    invoke-direct {p0, p1, v0, p4, p3}, Lio/flutter/view/AccessibilityBridge;->predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    const/16 p1, 0x10

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-eqz p4, :cond_2

    .line 1228
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1230
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1229
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_2
    if-nez p4, :cond_5

    .line 1233
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1234
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1235
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1234
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_3
    if-eqz p4, :cond_4

    .line 1215
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1216
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1217
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1216
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_4
    if-nez p4, :cond_5

    .line 1220
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1221
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1222
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1221
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 1325
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 1328
    :goto_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0, p2, v1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1331
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private predictCursorMovement(Lio/flutter/view/AccessibilityBridge$SemanticsNode;IZZ)V
    .locals 3

    .line 1249
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ltz v0, :cond_d

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 1305
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1307
    :cond_2
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_5

    .line 1282
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_5

    const-string p2, "(?!^)(\\n)"

    .line 1284
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1285
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1286
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1287
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    # += operator for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1289
    :cond_4
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_5
    if-nez p3, :cond_c

    .line 1291
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\n)"

    .line 1293
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1294
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1295
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1296
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    .line 1298
    :cond_6
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_9

    .line 1262
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_9

    const-string p2, "\\p{L}(\\b)"

    .line 1263
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1264
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1266
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 1267
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1268
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    # += operator for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    .line 1270
    :cond_8
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_9
    if-nez p3, :cond_c

    .line 1272
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\b)\\p{L}"

    .line 1274
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1275
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1276
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1277
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 1255
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_b

    .line 1256
    # += operator for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2112(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    goto :goto_0

    :cond_b
    if-nez p3, :cond_c

    .line 1257
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-lez p2, :cond_c

    .line 1258
    # -= operator for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2120(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    :cond_c
    :goto_0
    if-nez p4, :cond_d

    .line 1312
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    :cond_d
    :goto_1
    return-void
.end method

.method private sendAccessibilityEvent(II)V
    .locals 1

    .line 1811
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1814
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1825
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1832
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private sendLatestAccessibilityFlagsToFlutter()V
    .locals 2

    .line 522
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFeatureFlags:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityFeatures(I)V

    return-void
.end method

.method private sendWindowContentChangeEvent(I)V
    .locals 2

    const/16 v0, 0x800

    .line 1887
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1888
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1889
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1891
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private setAccessibilityPaneTitle(Ljava/lang/String;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z
    .locals 2

    .line 535
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    new-instance v1, Lio/flutter/view/-$$Lambda$AccessibilityBridge$rCW4KhEHJoU73TZTzdmyAQLb0vw;

    invoke-direct {v1, p1}, Lio/flutter/view/-$$Lambda$AccessibilityBridge$rCW4KhEHJoU73TZTzdmyAQLb0vw;-><init>(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 536
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    sget-object v0, Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;->INSTANCE:Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;

    .line 538
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->nullableHasAncestor(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V
    .locals 6

    const/4 v0, 0x0

    .line 1951
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2602(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1953
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1955
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1957
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1956
    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 1960
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1961
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1960
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1963
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1966
    :cond_0
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1968
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1967
    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1969
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1971
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1970
    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    .line 1973
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1978
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_2

    .line 1980
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    .line 1979
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1982
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1985
    :cond_2
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_3

    .line 1986
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1989
    :cond_3
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-ne v1, p1, :cond_4

    .line 1990
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_4
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 578
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 582
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 586
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    return-object p1

    .line 592
    :cond_2
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez v3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 605
    :cond_3
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 606
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 607
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v4

    .line 608
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 609
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getGlobalRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object p1

    .line 610
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-virtual {v0, v4, v1, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 614
    :cond_4
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    .line 615
    invoke-virtual {p0, v4, p1}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 617
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, ""

    const/16 v7, 0x12

    if-lt v5, v7, :cond_5

    .line 618
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 620
    :cond_5
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v5, "android.view.View"

    .line 621
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 623
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->isFocusable()Z
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 624
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v8, 0x1

    if-eqz v5, :cond_7

    .line 625
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 628
    :cond_7
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v5, :cond_9

    .line 629
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 632
    :cond_9
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    const/16 v9, 0x15

    if-eqz v5, :cond_12

    .line 633
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 634
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "android.widget.EditText"

    .line 635
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 637
    :cond_a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_c

    .line 638
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    xor-int/2addr v5, v8

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 639
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-eq v5, v1, :cond_b

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-eq v5, v1, :cond_b

    .line 641
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    .line 640
    invoke-virtual {v4, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 646
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_c

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v5, :cond_c

    .line 648
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ne v5, p1, :cond_c

    .line 649
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 655
    :cond_c
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    const/16 v10, 0x100

    if-eqz v5, :cond_d

    .line 656
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_d
    const/4 v5, 0x0

    .line 659
    :goto_2
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    const/16 v12, 0x200

    if-eqz v11, :cond_e

    .line 660
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x1

    .line 663
    :cond_e
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 664
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x2

    .line 667
    :cond_f
    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v10}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 668
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v5, v5, 0x2

    .line 671
    :cond_10
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 672
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_12

    .line 673
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    if-ltz v5, :cond_12

    .line 676
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    const/4 v5, 0x0

    goto :goto_3

    :cond_11
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 677
    :goto_3
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    .line 679
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->currentValueLength:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    sub-int/2addr v5, v10

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->maxValueLength:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v10

    add-int/2addr v5, v10

    .line 678
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 685
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_16

    .line 686
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/high16 v5, 0x20000

    .line 687
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 689
    :cond_13
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v5, 0x4000

    .line 690
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 692
    :cond_14
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 693
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 695
    :cond_15
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x8000

    .line 696
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 701
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_17

    .line 702
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, 0x200000

    .line 703
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 707
    :cond_17
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const-string v0, "android.widget.Button"

    .line 708
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 710
    :cond_19
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "android.widget.ImageView"

    .line 711
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 715
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_1b

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 716
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 717
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const/high16 v0, 0x100000

    .line 718
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 721
    :cond_1b
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 725
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_4

    .line 730
    :cond_1c
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 733
    :goto_4
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eq v0, v1, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v0, v5, :cond_1d

    .line 735
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousNodeId:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 738
    :cond_1d
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getGlobalRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v0

    .line 739
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 740
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->parent:Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v5

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getGlobalRect()Landroid/graphics/Rect;
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Landroid/graphics/Rect;

    move-result-object v5

    .line 741
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 742
    iget v11, v5, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v10, v11, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 743
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 745
    :cond_1e
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 747
    :goto_5
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->getBoundsInScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 748
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 749
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 750
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 751
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v0, 0x0

    goto :goto_7

    :cond_20
    :goto_6
    const/4 v0, 0x1

    .line 750
    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 753
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v0, v9, :cond_21

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 755
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 757
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onTapOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v10

    # getter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;
    invoke-static {v10}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2900(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 755
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 758
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    .line 760
    :cond_21
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 761
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 764
    :cond_22
    :goto_8
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 765
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x20

    if-lt v0, v9, :cond_23

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 766
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 768
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->onLongPressOverride:Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v10

    # getter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;
    invoke-static {v10}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2900(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 766
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 769
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_9

    .line 771
    :cond_23
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 772
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 775
    :cond_24
    :goto_9
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    const/16 v5, 0x2000

    const/16 v10, 0x1000

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 776
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 777
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 778
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 779
    :cond_25
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 795
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 796
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 797
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_a

    .line 810
    :cond_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_27

    .line 811
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 814
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 813
    invoke-static {v0, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 812
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_27
    const-string v0, "android.widget.ScrollView"

    .line 819
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 798
    :cond_28
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-le v0, v11, :cond_29

    .line 799
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->shouldSetCollectionInfo(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 803
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 801
    invoke-static {v2, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 800
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_29
    const-string v0, "android.widget.HorizontalScrollView"

    .line 807
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 826
    :cond_2a
    :goto_b
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 827
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 828
    :cond_2b
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 830
    :cond_2c
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 831
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 832
    :cond_2d
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 835
    :cond_2e
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const-string v0, "android.widget.SeekBar"

    .line 838
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 839
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 840
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 842
    :cond_30
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 843
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 846
    :cond_31
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_32

    .line 848
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 853
    :cond_32
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    const/16 v5, 0x1c

    if-eqz v0, :cond_33

    .line 854
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValueLabelHint()Ljava/lang/CharSequence;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 855
    :cond_33
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 856
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->getValueLabelHint()Ljava/lang/CharSequence;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 857
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v5, :cond_35

    .line 858
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_35

    if-eqz v0, :cond_34

    move-object v6, v0

    .line 862
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    if-eqz v0, :cond_36

    .line 866
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 870
    :cond_36
    :goto_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_37

    .line 871
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 872
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->tooltip:Ljava/lang/String;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 876
    :cond_37
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    .line 877
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v6

    if-nez v0, :cond_38

    if-eqz v6, :cond_39

    :cond_38
    const/4 v2, 0x1

    .line 881
    :cond_39
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v0, :cond_3b

    .line 883
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 884
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.widget.RadioButton"

    .line 885
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_3a
    const-string v0, "android.widget.CheckBox"

    .line 887
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_3b
    if-eqz v6, :cond_3c

    .line 890
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.Switch"

    .line 891
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 893
    :cond_3c
    :goto_d
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 896
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3d

    .line 897
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 901
    :cond_3d
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_3e

    .line 902
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne v0, p1, :cond_3e

    const/16 p1, 0x80

    .line 903
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_e

    :cond_3e
    const/16 p1, 0x40

    .line 905
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 909
    :goto_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_3f

    .line 910
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 911
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->customAccessibilityActions:Ljava/util/List;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    .line 912
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 913
    # getter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->resourceId:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3400(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result v5

    # getter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3500(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 912
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_f

    .line 918
    :cond_3f
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInTraversalOrder:Ljava/util/List;
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 919
    sget-object v2, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_10

    .line 922
    :cond_40
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    if-eq v2, v1, :cond_41

    .line 923
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 924
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v2

    .line 933
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 934
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_10

    .line 938
    :cond_41
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_10

    :cond_42
    return-object v4
.end method

.method public externalViewRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2791
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2795
    :cond_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {p2, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 2799
    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_5

    const/16 p3, 0x80

    if-eq p2, p3, :cond_4

    const p3, 0x8000

    if-eq p2, p3, :cond_3

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 2808
    :cond_2
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 2809
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    goto :goto_0

    .line 2804
    :cond_3
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 2805
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    .line 2801
    :cond_4
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    goto :goto_0

    .line 2812
    :cond_5
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    .line 2813
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1355
    :cond_0
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p1, :cond_1

    .line 1356
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1358
    :cond_1
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedInputFocusedNodeId:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 1359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1365
    :cond_2
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p1, :cond_3

    .line 1366
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1368
    :cond_3
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 1369
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHoveredObjectId()I
    .locals 1

    .line 241
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public obtainAccessibilityNodeInfo(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 544
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1437
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1440
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1445
    :cond_1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, v2, v3

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hitTest([F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[F)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1448
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1449
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 1450
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    .line 1449
    invoke-virtual {v1, v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1453
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 1454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 1456
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 1457
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->onTouchExplorationExit()V

    goto :goto_1

    .line 1459
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected accessibility hover event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flutter"

    invoke-static {v0, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1455
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/flutter/view/AccessibilityBridge;->handleTouchExploration(FF)V

    :goto_1
    return v4
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 976
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityViewEmbedder:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 977
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p3, 0x80

    if-ne p2, p3, :cond_0

    .line 980
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    :cond_0
    return p1

    .line 984
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x4

    const/16 v5, 0x12

    const/4 v6, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 1183
    sget p3, Lio/flutter/view/AccessibilityBridge;->FIRST_RESOURCE_ID:I

    sub-int/2addr p2, p3

    .line 1184
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->customAccessibilityActions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    if-eqz p2, :cond_14

    .line 1186
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1187
    # getter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4200(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1186
    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v6

    .line 1110
    :sswitch_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1176
    :sswitch_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_3

    return v3

    .line 1179
    :cond_3
    invoke-direct {p0, v2, p1, p3}, Lio/flutter/view/AccessibilityBridge;->performSetText(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 1168
    :sswitch_2
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1120
    :sswitch_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_4

    return v3

    .line 1123
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    if-eqz p3, :cond_5

    .line 1126
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1128
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    const-string v4, "extent"

    const-string v5, "base"

    if-eqz v3, :cond_6

    .line 1132
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1130
    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1133
    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1138
    :cond_6
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :goto_0
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    .line 1146
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1147
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {p1, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2002(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    .line 1148
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p1, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2102(Lio/flutter/view/AccessibilityBridge$SemanticsNode;I)I

    return v6

    .line 1158
    :sswitch_4
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1163
    :sswitch_5
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1153
    :sswitch_6
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 1025
    :sswitch_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1026
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 1027
    :cond_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1029
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 1030
    :cond_8
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1031
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValue:Ljava/lang/String;
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->decreasedValueAttributes:Ljava/util/List;
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1034
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1035
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_1
    return v6

    :cond_9
    return v3

    .line 1007
    :sswitch_8
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1008
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 1009
    :cond_a
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1011
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 1012
    :cond_b
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1013
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValue:Ljava/lang/String;
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2402(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->increasedValueAttributes:Ljava/util/List;
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object p2

    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->valueAttributes:Ljava/util/List;
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$3802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)Ljava/util/List;

    .line 1016
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1017
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_2
    return v6

    :cond_c
    return v3

    .line 1048
    :sswitch_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_d

    return v3

    .line 1051
    :cond_d
    invoke-direct {p0, v2, p1, p3, v3}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 1060
    :sswitch_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_e

    return v3

    .line 1063
    :cond_e
    invoke-direct {p0, v2, p1, p3, v6}, Lio/flutter/view/AccessibilityBridge;->performCursorMoveAction(Lio/flutter/view/AccessibilityBridge$SemanticsNode;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 1070
    :sswitch_b
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p2, :cond_f

    .line 1071
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    if-ne p2, p1, :cond_f

    .line 1072
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1074
    :cond_f
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    .line 1075
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_10

    .line 1076
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->embeddedAccessibilityFocusedNodeId:Ljava/lang/Integer;

    .line 1078
    :cond_10
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 1080
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    return v6

    .line 1086
    :sswitch_c
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez p2, :cond_11

    .line 1090
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 1094
    :cond_11
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1096
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    const p2, 0x8000

    .line 1098
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    .line 1100
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-nez p2, :cond_12

    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 1101
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1103
    :cond_12
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    :cond_13
    return v6

    .line 1002
    :sswitch_d
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 994
    :sswitch_e
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    :cond_14
    return v3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_e
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_b
        0x100 -> :sswitch_a
        0x200 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_6
        0x8000 -> :sswitch_5
        0x10000 -> :sswitch_4
        0x20000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->isReleased:Z

    .line 489
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->detachAccessibiltyBridge()V

    :cond_0
    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 493
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 495
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 498
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->animationScaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 499
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 2006
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2007
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz v0, :cond_0

    .line 2009
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    const/high16 v1, 0x10000

    .line 2008
    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(II)V

    :cond_0
    const/4 v0, 0x0

    .line 2012
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 2013
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->hoveredObject:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    const/4 v0, 0x0

    .line 2014
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    return-void
.end method

.method public setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-void
.end method

.method updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 4

    .line 1517
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1518
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1519
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->getOrCreateAccessibilityAction(I)Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;

    move-result-object v0

    .line 1520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    # setter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->overrideId:I
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$4402(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;I)I

    .line 1521
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 1522
    :cond_0
    aget-object v1, p2, v1

    :goto_1
    # setter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->label:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$3502(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1523
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 1524
    :cond_1
    aget-object v2, p2, v1

    :goto_2
    # setter for: Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->hint:Ljava/lang/String;
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;->access$2902(Lio/flutter/view/AccessibilityBridge$CustomAccessibilityAction;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1541
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1542
    invoke-direct {p0, v1}, Lio/flutter/view/AccessibilityBridge;->getOrCreateSemanticsNode(I)Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object v1

    .line 1543
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateWith(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    invoke-static {v1, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    .line 1544
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v1, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1547
    :cond_1
    sget-object v3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v1, v3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1548
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1550
    :cond_2
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadPreviousConfig:Z
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_3
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1554
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->usesVirtualDisplay(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1555
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->platformViewsAccessibilityDelegate:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 1556
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->platformViewId:I
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1558
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1563
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1564
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->getRootSemanticsNode()Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    move-result-object p2

    .line 1565
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 1568
    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1572
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_7

    .line 1578
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_5

    .line 1579
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->doesLayoutInDisplayCutoutModeRequireLeftInset()Z

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    .line 1583
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1585
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1586
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->globalGeometryDirty:Z
    invoke-static {p2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4702(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z

    .line 1587
    # setter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->inverseTransformDirty:Z
    invoke-static {p2, v1}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4802(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Z)Z

    .line 1589
    :cond_6
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/view/AccessibilityBridge;->lastLeftFrameInset:Ljava/lang/Integer;

    .line 1590
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1594
    :cond_7
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->updateRecursively([FLjava/util/Set;Z)V
    invoke-static {p2, v3, p1, v2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$4900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;[FLjava/util/Set;Z)V

    .line 1595
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->collectRoutes(Ljava/util/List;)V
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Ljava/util/List;)V

    .line 1603
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1604
    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object v4, v5

    goto :goto_2

    :cond_a
    if-nez v4, :cond_b

    .line 1610
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 1611
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    :cond_b
    if-eqz v4, :cond_d

    .line 1622
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    iget v5, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    if-ne p2, v5, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq p2, v5, :cond_d

    .line 1623
    :cond_c
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v4}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge;->previousRouteId:I

    .line 1624
    invoke-direct {p0, v4}, Lio/flutter/view/AccessibilityBridge;->onWindowNameChange(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1626
    :cond_d
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1627
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1628
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->flutterNavigationStack:Ljava/util/List;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1631
    :cond_e
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->flutterSemanticsTree:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1632
    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 1633
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1634
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1635
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1636
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->willRemoveSemanticsNode(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)V

    .line 1637
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1643
    :cond_10
    invoke-direct {p0, v2}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    .line 1645
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1646
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didScroll()Z
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 1648
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v0, 0x1000

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1652
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollPosition:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v0

    .line 1653
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v4

    .line 1654
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMax:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    const v6, 0x4788b800    # 70000.0f

    const v7, 0x47c35000    # 100000.0f

    if-eqz v5, :cond_13

    cmpl-float v4, v0, v6

    if-lez v4, :cond_12

    const v0, 0x4788b800    # 70000.0f

    :cond_12
    const v4, 0x47c35000    # 100000.0f

    .line 1660
    :cond_13
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_15

    add-float/2addr v4, v7

    const v5, -0x38774800    # -70000.0f

    cmpg-float v6, v0, v5

    if-gez v6, :cond_14

    const v0, -0x38774800    # -70000.0f

    :cond_14
    add-float/2addr v0, v7

    goto :goto_6

    .line 1667
    :cond_15
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 1668
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollExtentMin:F
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)F

    move-result v5

    sub-float/2addr v0, v5

    .line 1671
    :goto_6
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_7

    .line 1674
    :cond_16
    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadAction(Lio/flutter/view/AccessibilityBridge$Action;)Z
    invoke-static {p2, v5}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5500(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    float-to-int v0, v0

    .line 1675
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    float-to-int v0, v4

    .line 1676
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_8

    :cond_18
    :goto_7
    float-to-int v0, v0

    .line 1672
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    float-to-int v0, v4

    .line 1673
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1678
    :cond_19
    :goto_8
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 1680
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollChildren:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1681
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1684
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->childrenInHitTestOrder:Ljava/util/List;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5700(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_1a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1685
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {v5, v6}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result v5

    if-nez v5, :cond_1a

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1706
    :cond_1b
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->scrollIndex:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5600(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1708
    :cond_1c
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1710
    :cond_1d
    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_1e

    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->didChangeLabel()Z
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5800(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 1711
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendWindowContentChangeEvent(I)V

    .line 1713
    :cond_1e
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_1f

    .line 1714
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_1f

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1715
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-nez p3, :cond_1f

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1716
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 1718
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/4 v0, 0x4

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1719
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->label:Ljava/lang/String;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1725
    :cond_1f
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_21

    .line 1726
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_21

    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_20

    .line 1728
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-eq p3, v0, :cond_21

    .line 1729
    :cond_20
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1731
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v0, 0x8

    invoke-direct {p0, p3, v0}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1730
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_a

    .line 1732
    :cond_21
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-nez p3, :cond_22

    .line 1736
    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge;->lastInputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    .line 1739
    :cond_22
    :goto_a
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_11

    .line 1740
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_11

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1741
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hadFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$5900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_11

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 1742
    # invokes: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->hasFlag(Lio/flutter/view/AccessibilityBridge$Flag;)Z
    invoke-static {p2, p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$1900(Lio/flutter/view/AccessibilityBridge$SemanticsNode;Lio/flutter/view/AccessibilityBridge$Flag;)Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->accessibilityFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    if-eqz p3, :cond_23

    .line 1748
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p3}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->inputFocusedSemanticsNode:Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v0

    if-ne p3, v0, :cond_11

    .line 1749
    :cond_23
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_24

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousValue:Ljava/lang/String;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object p3

    goto :goto_b

    :cond_24
    move-object p3, v0

    .line 1750
    :goto_b
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->value:Ljava/lang/String;
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2400(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    .line 1751
    :cond_25
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-direct {p0, v4, p3, v0}, Lio/flutter/view/AccessibilityBridge;->createTextChangedEvent(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    if-eqz p3, :cond_26

    .line 1753
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1756
    :cond_26
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionBase:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6200(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-ne p3, v4, :cond_27

    .line 1757
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->previousTextSelectionExtent:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$6300(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    if-eq p3, v4, :cond_11

    .line 1760
    :cond_27
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->id:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p3

    const/16 v4, 0x2000

    .line 1759
    invoke-direct {p0, p3, v4}, Lio/flutter/view/AccessibilityBridge;->obtainAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 1761
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionBase:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2000(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1763
    # getter for: Lio/flutter/view/AccessibilityBridge$SemanticsNode;->textSelectionExtent:I
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$SemanticsNode;->access$2100(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1764
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1765
    invoke-direct {p0, p3}, Lio/flutter/view/AccessibilityBridge;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_5

    :cond_28
    return-void
.end method
