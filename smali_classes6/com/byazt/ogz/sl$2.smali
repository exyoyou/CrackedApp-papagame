.class public Lcom/byazt/ogz/sl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x594
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ogz/sl;->ve(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/ogz/sl;


# direct methods
.method public constructor <init>(Lcom/byazt/ogz/sl;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ogz/sl$2;->tt:Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ogz/sl$2;->c:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/byazt/ogz/sl$2;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/ogz/sl$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/byazt/ogz/sl$2$1;-><init>(Lcom/byazt/ogz/sl$2;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/ete/d;->c(Lorg/json/JSONObject;Lcom/byazt/ete/d$c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
