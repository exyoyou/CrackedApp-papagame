.class public Lcom/haima/hmcp/beans/RequestPreCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public msg:Ljava/lang/String;

.field public requestAllow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
