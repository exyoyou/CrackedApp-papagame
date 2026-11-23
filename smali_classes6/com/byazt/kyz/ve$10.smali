.class public Lcom/byazt/kyz/ve$10;
.super Lcom/byazt/dyf/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x223
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$10;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move v4, p5

    .line 8
    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/kyz/ve$10$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/byazt/kyz/ve$10$1;-><init>(Lcom/byazt/kyz/ve$10;Lcom/byazt/dhf/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dyf/tt$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
