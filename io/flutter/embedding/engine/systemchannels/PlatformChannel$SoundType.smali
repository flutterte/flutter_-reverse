.class public final enum Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
.super Ljava/lang/Enum;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

.field public static final enum ALERT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

.field public static final enum CLICK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;


# instance fields
.field private final encodedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 540
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const-string v3, "SystemSoundType.click"

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->CLICK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    .line 541
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    const-string v3, "ALERT"

    const/4 v4, 0x1

    const-string v5, "SystemSoundType.alert"

    invoke-direct {v1, v3, v4, v5}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->ALERT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 539
    sput-object v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 556
    iput-object p3, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->encodedName:Ljava/lang/String;

    return-void
.end method

.method static fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 545
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 546
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->encodedName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such SoundType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
    .locals 1

    .line 539
    const-class v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
    .locals 1

    .line 539
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    return-object v0
.end method
