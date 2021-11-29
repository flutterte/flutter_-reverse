.class final enum Lio/flutter/embedding/android/FlutterView$ZeroSides;
.super Ljava/lang/Enum;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZeroSides"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/FlutterView$ZeroSides;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/android/FlutterView$ZeroSides;

.field public static final enum BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

.field public static final enum LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

.field public static final enum NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

.field public static final enum RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 567
    new-instance v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/FlutterView$ZeroSides;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->NONE:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    .line 568
    new-instance v1, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/embedding/android/FlutterView$ZeroSides;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/embedding/android/FlutterView$ZeroSides;->LEFT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    .line 569
    new-instance v3, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/flutter/embedding/android/FlutterView$ZeroSides;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/flutter/embedding/android/FlutterView$ZeroSides;->RIGHT:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    .line 570
    new-instance v5, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/flutter/embedding/android/FlutterView$ZeroSides;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/flutter/embedding/android/FlutterView$ZeroSides;->BOTH:Lio/flutter/embedding/android/FlutterView$ZeroSides;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/flutter/embedding/android/FlutterView$ZeroSides;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 566
    sput-object v7, Lio/flutter/embedding/android/FlutterView$ZeroSides;->$VALUES:[Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterView$ZeroSides;
    .locals 1

    .line 566
    const-class v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/FlutterView$ZeroSides;
    .locals 1

    .line 566
    sget-object v0, Lio/flutter/embedding/android/FlutterView$ZeroSides;->$VALUES:[Lio/flutter/embedding/android/FlutterView$ZeroSides;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/FlutterView$ZeroSides;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/FlutterView$ZeroSides;

    return-object v0
.end method
