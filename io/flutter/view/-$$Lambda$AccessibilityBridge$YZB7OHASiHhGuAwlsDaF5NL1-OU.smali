.class public final synthetic Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/util/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;

    invoke-direct {v0}, Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;-><init>()V

    sput-object v0, Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;->INSTANCE:Lio/flutter/view/-$$Lambda$AccessibilityBridge$YZB7OHASiHhGuAwlsDaF5NL1-OU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/flutter/view/AccessibilityBridge$SemanticsNode;

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge;->lambda$shouldSetCollectionInfo$1(Lio/flutter/view/AccessibilityBridge$SemanticsNode;)Z

    move-result p1

    return p1
.end method
