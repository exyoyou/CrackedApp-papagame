.class public final synthetic Lcom/cloudplay/messagesdk/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloudplay/messagesdk/listener/SendListener;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/a/m;->b:Lcom/cloudplay/messagesdk/listener/SendListener;

    iput-boolean p2, p0, Lcom/cloudplay/messagesdk/a/m;->c:Z

    iput-object p3, p0, Lcom/cloudplay/messagesdk/a/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/m;->b:Lcom/cloudplay/messagesdk/listener/SendListener;

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/a/m;->c:Z

    iget-object v2, p0, Lcom/cloudplay/messagesdk/a/m;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloudplay/messagesdk/a/j;->b(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V

    return-void
.end method
