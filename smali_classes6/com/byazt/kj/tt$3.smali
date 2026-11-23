.class public Lcom/byazt/kj/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9f,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kj/tt;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kj/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kj/tt$3;->c:Lcom/byazt/kj/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/kj/tt$3;->c:Lcom/byazt/kj/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    const-wide/16 v6, -0x1

    .line 19
    .line 20
    invoke-static/range {v0 .. v7}, Lcom/byazt/kj/tt;->c(Lcom/byazt/kj/tt;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
