.class public final synthetic Lcom/haima/hmcp/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/model/LocalKeyboardModel;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/model/b;->a:Lcom/haima/hmcp/model/LocalKeyboardModel;

    return-void
.end method


# virtual methods
.method public final onReactive(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/b;->a:Lcom/haima/hmcp/model/LocalKeyboardModel;

    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->b(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V

    return-void
.end method
