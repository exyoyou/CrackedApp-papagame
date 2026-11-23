.class public Lcom/byazt/gq/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gq/x$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x3c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/x;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/x;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/x$3;->c:Lcom/byazt/gq/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/gq/x$3;->c:Lcom/byazt/gq/x;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/gq/x;->c(Lcom/byazt/gq/x;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/byazt/zn/c;->c(JILcom/byazt/t/DownloadInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
