using System.ComponentModel;

namespace CarServisApp.Forms;

partial class ItemDetailForm
{
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private IContainer components = null;

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }

        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
            this._lsbDetail = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // _lsbDetail
            // 
            this._lsbDetail.FormattingEnabled = true;
            this._lsbDetail.ItemHeight = 15;
            this._lsbDetail.Location = new System.Drawing.Point(12, 27);
            this._lsbDetail.Name = "_lsbDetail";
            this._lsbDetail.ScrollAlwaysVisible = true;
            this._lsbDetail.Size = new System.Drawing.Size(395, 274);
            this._lsbDetail.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(181, 15);
            this.label1.TabIndex = 1;
            this.label1.Text = "Podropnosti vybraného záznamu";
            // 
            // ItemDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(419, 313);
            this.Controls.Add(this.label1);
            this.Controls.Add(this._lsbDetail);
            this.Name = "ItemDetailForm";
            this.Text = "ItemDetailForm";
            this.ResumeLayout(false);
            this.PerformLayout();

    }

    #endregion

    private ListBox _lsbDetail;
    private Label label1;
}