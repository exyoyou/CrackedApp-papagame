.class public Lcom/haima/hmcp/beans/LongTouchBtnConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:I

.field public extraInfo:Lcom/haima/hmcp/beans/LongTouchExtraInfo;

.field public fn:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x7d0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/beans/LongTouchBtnConfig;->time:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/LongTouchBtnConfig;->fn:I

    .line 10
    .line 11
    return-void
.end method
