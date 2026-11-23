.class public Lcom/byazt/wz/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ysz/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/c;->sp(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$3;->ve:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/c$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/wz/c$3;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/wz/c$3;->ve:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/wz/c$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/byazt/wz/c$3;->tt:Z

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/byazt/wz/c;->tt(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
