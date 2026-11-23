.class public final synthetic Lcom/join/android/app/common/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/customview/t;

.field public final synthetic c:Landroid/widget/CheckBox;

.field public final synthetic d:Lcom/join/mgps/db/tables/EMUApkTable;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/customview/t;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/utils/d;->b:Lcom/join/mgps/customview/t;

    iput-object p2, p0, Lcom/join/android/app/common/utils/d;->c:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/join/android/app/common/utils/d;->d:Lcom/join/mgps/db/tables/EMUApkTable;

    iput-object p4, p0, Lcom/join/android/app/common/utils/d;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/d;->b:Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/android/app/common/utils/d;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/join/android/app/common/utils/d;->d:Lcom/join/mgps/db/tables/EMUApkTable;

    iget-object v3, p0, Lcom/join/android/app/common/utils/d;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/android/app/common/utils/APKUtils$b;->d(Lcom/join/mgps/customview/t;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
