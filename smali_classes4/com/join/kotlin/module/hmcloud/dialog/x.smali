.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/x;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/x;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->Q(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
