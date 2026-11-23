.class public final synthetic Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;


# instance fields
.field public final synthetic a:Lcom/cloudplay/messagesdk/network/HttpResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloudplay/messagesdk/network/HttpResultListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/b;->a:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/network/c;->c(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    return-void
.end method
