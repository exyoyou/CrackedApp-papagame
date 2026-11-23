.class public Lorg/webrtc/haima/HaimaDataChannel$Propertys;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HaimaDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Propertys"
.end annotation


# instance fields
.field private mIsCreater:Z

.field private mParameter:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/webrtc/haima/HaimaDataChannel$Propertys;->mIsCreater:Z

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/webrtc/haima/HaimaDataChannel$Propertys;->mParameter:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getParameter()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HaimaDataChannel$Propertys;->mParameter:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isCreater()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HaimaDataChannel$Propertys;->mIsCreater:Z

    .line 2
    .line 3
    return v0
.end method
