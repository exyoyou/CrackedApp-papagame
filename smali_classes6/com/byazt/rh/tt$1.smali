.class public Lcom/byazt/rh/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x73,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rh/tt;->c(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONArray;

.field public final synthetic tt:Lcom/byazt/rh/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/rh/tt;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rh/tt$1;->tt:Lcom/byazt/rh/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rh/tt$1;->c:Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/rh/tt$1;->c:Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/rh/tt$1;->tt:Lcom/byazt/rh/tt;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/rh/tt$1;->c:Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/byazt/rh/tt;->c(Lcom/byazt/rh/tt;Lorg/json/JSONArray;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
