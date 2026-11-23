.class Lcom/join/mgps/activity/TagAddActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic d:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;ZLcom/join/mgps/dto/GameTagsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isUserTag",
            "val$gameTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->d:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->d:Lcom/join/mgps/activity/TagAddActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/dto/GameTagsBean;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ""

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$q;->f(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$q;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method
