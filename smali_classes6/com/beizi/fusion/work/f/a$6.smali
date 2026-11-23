.class Lcom/beizi/fusion/work/f/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field final synthetic b:Lcom/beizi/fusion/work/f/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/f/a$6;->b:Lcom/beizi/fusion/work/f/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/f/a$6;->a:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$6;->b:Lcom/beizi/fusion/work/f/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/work/f/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$6;->b:Lcom/beizi/fusion/work/f/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->D(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/tool/aq;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$6;->b:Lcom/beizi/fusion/work/f/a;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->D(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/tool/aq;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a$6;->a:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
