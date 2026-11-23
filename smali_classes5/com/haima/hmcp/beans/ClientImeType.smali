.class public Lcom/haima/hmcp/beans/ClientImeType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ime:Ljava/lang/String;

.field public imeType:I

.field public imeTypeSource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/ClientImeType;->imeType:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/beans/ClientImeType;->ime:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
