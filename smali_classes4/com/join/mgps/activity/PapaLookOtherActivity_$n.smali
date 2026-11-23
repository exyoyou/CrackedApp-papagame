.class Lcom/join/mgps/activity/PapaLookOtherActivity_$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaLookOtherActivity_;->setLinkType(ILcom/join/mgps/dto/CollectionDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/CollectionDataBean;

.field final synthetic d:Lcom/join/mgps/activity/PapaLookOtherActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$index",
            "val$collectionDataBeanFirsts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->d:Lcom/join/mgps/activity/PapaLookOtherActivity_;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->c:Lcom/join/mgps/dto/CollectionDataBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->d:Lcom/join/mgps/activity/PapaLookOtherActivity_;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->c:Lcom/join/mgps/dto/CollectionDataBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->access$001(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
