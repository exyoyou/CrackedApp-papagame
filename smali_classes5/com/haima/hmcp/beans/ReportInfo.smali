.class public Lcom/haima/hmcp/beans/ReportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public eventDataVer:Ljava/lang/String;

.field public retryRequestCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1.0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/ReportInfo;->eventDataVer:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 10
    .line 11
    return-void
.end method
