.class public Lorg/hmwebrtc/DataChannel$SendResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendResult"
.end annotation


# static fields
.field public static final SEND_BLOCK:I = 0x2

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_SUCCESS:I


# instance fields
.field public bufferedSize:J

.field public result:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "SendResult"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/hmwebrtc/DataChannel$SendResult;->result:I

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/hmwebrtc/DataChannel$SendResult;->bufferedSize:J

    .line 7
    .line 8
    return-void
.end method
