# GitHub Pages Setup for dbt Docs

## 🚀 Setup Instructions

### 1. Enable GitHub Pages
1. Go to your repository Settings
2. Navigate to "Pages" in the sidebar
3. Under "Source", select "GitHub Actions"

### 2. Configure AWS Secrets
Add these secrets to your repository (Settings > Secrets and variables > Actions):

- `AWS_ACCESS_KEY_ID`: Your AWS access key
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret key

### 3. Workflow Details

The workflow will:
1. **Install dependencies**: dbt-core, dbt-athena-community, awscli
2. **Configure AWS**: Set up credentials for Athena access
3. **Generate docs**: Run `dbt docs generate`
4. **Deploy**: Upload to GitHub Pages

### 4. Access Your Docs

After deployment, your docs will be available at:
```
https://[username].github.io/[repository-name]/
```

### 5. Manual Trigger

You can manually trigger the workflow:
1. Go to "Actions" tab
2. Select "Deploy dbt docs to GitHub Pages"
3. Click "Run workflow"

## 📋 Requirements

- Repository must be public (for free GitHub Pages)
- AWS credentials with Athena access
- dbt project with proper profiles.yml

## 🔧 Troubleshooting

### Common Issues:
1. **AWS credentials**: Ensure secrets are correctly set
2. **dbt errors**: Check profiles.yml configuration
3. **Build failures**: Verify Python dependencies

### Debug Steps:
1. Check Actions logs for specific errors
2. Test dbt docs locally first
3. Verify AWS permissions
