.class public final Lcom/byazt/tl/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pr/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tl/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/byazt/vo/tt;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/byazt/vo/tt;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/vo/tt;->x()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2, p3}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V

    return-void
.end method
