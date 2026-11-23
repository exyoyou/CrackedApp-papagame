.class public Lcom/haima/hmcp/beans/ReportInputDisconnect;
.super Lcom/haima/hmcp/beans/ReportEventDataVer;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public eventDataVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ReportEventDataVer;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1.0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/ReportInputDisconnect;->eventDataVer:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
