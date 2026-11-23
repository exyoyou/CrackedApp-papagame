.class public final synthetic Lcom/cloudplay/messagesdk/socket/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloudplay/messagesdk/socket/a;

.field public final synthetic c:Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

.field public final synthetic d:Lcom/cloudplay/messagesdk/listener/SendListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b;->b:Lcom/cloudplay/messagesdk/socket/a;

    iput-object p2, p0, Lcom/cloudplay/messagesdk/socket/b;->c:Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    iput-object p3, p0, Lcom/cloudplay/messagesdk/socket/b;->d:Lcom/cloudplay/messagesdk/listener/SendListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b;->b:Lcom/cloudplay/messagesdk/socket/a;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b;->c:Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b;->d:Lcom/cloudplay/messagesdk/listener/SendListener;

    invoke-static {v0, v1, v2}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/a;Lcom/cloudplay/messagesdk/entity/HMTxtMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-void
.end method
