.class public Lcom/byazt/ux/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x18b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/a;->tt(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ux/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/a$4;->c:Lcom/byazt/ux/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xj/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/a$4;->c:Lcom/byazt/ux/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ux/a;->ve(Lcom/byazt/ux/a;)Lcom/byazt/ux/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ux/a$4;->c:Lcom/byazt/ux/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ux/a;->ve(Lcom/byazt/ux/a;)Lcom/byazt/ux/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/byazt/ux/ve;->ve(Lcom/byazt/xj/ve;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
