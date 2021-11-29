.class final enum Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AccessibilityFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

.field public static final enum INVERT_COLORS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2097
    new-instance v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v1, "ACCESSIBLE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2098
    new-instance v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v4, "INVERT_COLORS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->INVERT_COLORS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    .line 2099
    new-instance v4, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const-string v6, "DISABLE_ANIMATIONS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->DISABLE_ANIMATIONS:Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    const/4 v6, 0x3

    new-array v6, v6, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 2096
    sput-object v6, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->$VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2104
    iput p3, p0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
    .locals 1

    .line 2096
    const-class v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;
    .locals 1

    .line 2096
    sget-object v0, Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->$VALUES:[Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$AccessibilityFeature;

    return-object v0
.end method
