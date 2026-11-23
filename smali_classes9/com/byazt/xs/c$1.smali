.class public Lcom/byazt/xs/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic uj:Lcom/byazt/xs/c;

.field public final synthetic ve:Lcom/byazt/ux/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/c$1;->uj:Lcom/byazt/xs/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/c$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/xs/c$1;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/xs/c$1;->ve:Lcom/byazt/ux/sp;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/c$1;->uj:Lcom/byazt/xs/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xs/c$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/xs/c$1;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/xs/c$1;->ve:Lcom/byazt/ux/sp;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/xs/c;->c(Lcom/byazt/xs/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
